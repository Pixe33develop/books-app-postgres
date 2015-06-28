from django.conf.urls import include, url

from . import views
from books.api import BookResource, ProfileResource

book_resource = BookResource()
profile_resource = ProfileResource()

urlpatterns = [
    url(r'^api/', include(book_resource.urls)),
    url(r'^api/', include(profile_resource.urls)),
    url(r'^profile$', views.index, name='index'),
    url(r'^library$', views.index, name='index'),
    url(r'^$', views.index, name='index'),
]