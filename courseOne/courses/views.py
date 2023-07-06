from django.shortcuts import render
from django.views import View
from django.views.generic import ListView, DetailView
from .models import Course

# Create your views here.
def homepage(request):
    return render(request, 'homepage.html')


class CourseListView(ListView):
    model = Course
    template_name = 'plp.html'
    context_object_name = 'courses'
    paginate_by = 10  # Specify the number of courses to display per page

    def get_queryset(self):
        queryset = super().get_queryset()

        # Get query parameters for filtering
        course_type = self.request.GET.getlist('type')
        price_min = self.request.GET.get('price_min')
        price_max = self.request.GET.get('price_max')
        popularity_min = self.request.GET.get('popularity_min')
        topics = self.request.GET.getlist('topics')

        # Apply filters if provided
        if course_type:
            queryset = queryset.filter(course_type__in=course_type)
        if price_min:
            queryset = queryset.filter(price__gte=price_min)
        if price_max:
            queryset = queryset.filter(price__lte=price_max)
        if popularity_min:
            queryset = queryset.filter(popularity__gte=popularity_min)
        if topics:
            queryset = queryset.filter(topics__name__in=topics)

        # If default filter, return```
        if self.request.GET.get('default_filter') == 'true':
            queryset = Course.objects.all()

        return queryset


class CourseDetailView(DetailView):
    model = Course
    template_name = 'pdp.html'
    context_object_name = 'course'