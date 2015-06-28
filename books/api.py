from tastypie.resources import ModelResource
from tastypie.authorization import Authorization
from books.models import Book, Profile


class BookResource(ModelResource):
    class Meta:
        queryset = Book.objects.all()
        resource_name = 'books'
        authorization = Authorization()


class ProfileResource(ModelResource):
    class Meta:
        queryset = Profile.objects.all()
        resource_name = 'profiles'
        authorization = Authorization()