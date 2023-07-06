from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt
import razorpay

# Initialize the Razorpay client with your API key and secret
razorpay_client = razorpay.Client(auth=('rzp_test_CAolJSOr7wd3Bv', 'PMFJ79lrYk1qEIAwI1rcGEUG'), verify=False)

@csrf_exempt
def initiate_payment(request):
    if request.method == 'POST':
        # Extract the necessary data from the form submission
        amount = int(request.POST.get('amount')) * 100  # Convert amount to paise (e.g., Rs. 100 to 10000 paise)
        
        # Create a Razorpay order
        order_data = {
            'amount': amount,
            'currency': 'INR',
            'payment_capture': '1'
        }
        razorpay_order = razorpay_client.order.create(order_data)

        # Render the payment form with the Razorpay order ID
        return render(request, 'payment.html', {'order_id': razorpay_order['id']})

    # Render the initial payment form
    return render(request, 'payment.html')


@csrf_exempt
def handle_payment_response(request):
    if request.method == 'POST':
        # Extract the response data from the POST request
        razorpay_payment_id = request.POST.get('razorpay_payment_id')
        razorpay_order_id = request.POST.get('razorpay_order_id')
        razorpay_signature = request.POST.get('razorpay_signature')

        # Verify the payment response using Razorpay's utility function
        params_dict = {
            'razorpay_order_id': razorpay_order_id,
            'razorpay_payment_id': razorpay_payment_id,
            'razorpay_signature': razorpay_signature
        }
        try:
            razorpay_client.utility.verify_payment_signature(params_dict)
            # Payment response is valid, update your application's data accordingly
            # For example, mark the order as paid or update user's account balance
            
            return redirect('payment_success')  # Redirect to a success page after successful payment
        except razorpay.errors.SignatureVerificationError:
            # Payment response is not valid, handle the error as per your application's requirements
            return redirect('payment_failure')  # Redirect to a failure page if payment verification fails

    # Invalid request method, handle the error as per your application's requirements
    return redirect('payment_failure')  # Redirect to a failure page for any other request method


def payment_success(request):
    # Render the payment success page
    return render(request, 'payment_success.html')


def payment_failure(request):
    # Render the payment failure page
    return render(request, 'payment_failure.html')
