from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse
import razorpay
from django.conf import settings
import hmac, hashlib



def initiate_payment(request):
    if request.method == 'POST':
        # Extract the necessary data from the form submission
        amount = int(request.POST.get('amount')) * 100  # Convert amount to paise (e.g., Rs. 100 to 10000 paise)
        
        client = razorpay.Client(auth=(settings.RAZORPAY_KEY_ID, settings.RAZORPAY_KEY_SECRET))

        # Create a new order
        order = client.order.create({
            'amount': amount,
            'currency': 'INR',
            'payment_capture': '1'  # Auto-capture payment when successful (0 for manual capture)
        })

        order_id = order['id']
        order_amount = order['amount']
        order_currency = order['currency']

        return render(request, 'payment.html', {
            'order_id': order_id,
            'order_amount': order_amount,
            'order_currency': order_currency,
            'razorpay_key_id': settings.RAZORPAY_KEY_ID
        })

    return render(request, 'initiate_payment.html')


@csrf_exempt
def payment_success(request):
    if request.method == 'POST':
        # Retrieve the payment response data
        data = request.POST

        # Verify the webhook signature
        signature = data.get('razorpay_signature')
        expected_signature = hmac.new(
            settings.SECRET_KEY.encode(),
            request.body,
            hashlib.sha256
        ).hexdigest()

        if signature == expected_signature:
            # Signature verification succeeded
            # Process the payment response
            payment_id = data.get('razorpay_payment_id')
            order_id = data.get('razorpay_order_id')
            amount = data.get('razorpay_amount')

            # Update your application logic accordingly
            # ...

            return HttpResponse(status=200)
        else:
            # Signature verification failed
            return HttpResponse(status=400)

    return HttpResponse(status=405)