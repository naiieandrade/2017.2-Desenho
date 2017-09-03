from django.http import HttpResponse
from django.views.generic import TemplateView,ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy

from .models import User

class UserList(ListView):
    model = User

class UserCreate(CreateView):
    model = User
    fields = ['username', 'first_name', 'last_name', 'email']
    success_url = reverse_lazy('users:user_list')

class UserUpdate(UpdateView):
    model = User
    fields = ['username', 'first_name', 'last_name', 'email']
    success_url = reverse_lazy('users:user_list')

class UserDelete(DeleteView):
    model = User
    success_url = reverse_lazy('users:user_list')
