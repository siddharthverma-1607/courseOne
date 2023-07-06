from django.db import models

class Course(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    course_type = models.CharField(max_length=100) # E.g. Online, Offline, Premium, Free
    price = models.DecimalField(max_digits=8, decimal_places=2)
    popularity = models.IntegerField()
    topics = models.ManyToManyField('Topic', related_name='courses')

    def __str__(self):
        return self.title


class Content(models.Model):
    brief = models.TextField()
    course = models.ForeignKey(Course, on_delete=models.CASCADE, related_name='contents')

    def __str__(self):
        return self.brief


class Lecture(models.Model):
    brief = models.TextField()
    content = models.ForeignKey(Content, on_delete=models.CASCADE, related_name='lectures')

    def __str__(self):
        return self.brief


class Video(models.Model):
    title = models.CharField(max_length=200)
    url = models.URLField()
    lecture = models.ForeignKey(Lecture, on_delete=models.CASCADE, related_name='videos')

    def __str__(self):
        return self.title


class Image(models.Model):
    title = models.CharField(max_length=200)
    url = models.URLField()
    content = models.ForeignKey(Content, on_delete=models.CASCADE, related_name='images')

    def __str__(self):
        return self.title


class Topic(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name
