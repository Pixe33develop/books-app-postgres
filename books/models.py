from django.db import models


class Book(models.Model):
    name = models.CharField(blank=False, max_length=20)
    title = models.CharField(max_length=30)
    author = models.CharField(blank=False, max_length=30)
    description = models.CharField(max_length=512)
    price = models.IntegerField(blank=False)

    def __str__(self):
        return self.name


class Profile(models.Model):
    column_name = models.CharField(editable=False, max_length=20)
    is_visible = models.BooleanField()

    def __str__(self):
        return self.column_name