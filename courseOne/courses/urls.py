from django.urls import path
from . import views
from .views import CourseListView, CourseDetailView

urlpatterns = [
    path('home', views.homepage, name='homepage'),
    path('', views.homepage, name='homepage'),
    path('courses/', CourseListView.as_view(), name='course-list'),
    path('courses/<int:pk>/', CourseDetailView.as_view(), name='course-detail'),
]
