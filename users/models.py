from django.db import models
from django.core.urlresolvers import reverse
from django.utils.translation import gettext as _

class Person(models.Model):

    id_person = models.IntegerField(_('id_person'),unique= True)
    phone_person = models.CharField(_('phone_person'), max_length= 14)
    cpf = models.CharField(_('cpf'), max_length= 14)
    birth_date = models.CharField(_('birth_date'), max_length= 5)
    name_person = models.CharField(_('name_person'), max_length= 26)

class Client(Person):

    email_client = models.CharField(_('email_client'), max_length= 26, unique= True)
    password_client = models.CharField(_('password_client'), max_length= 10)

class Employee(Person):

    email_employee = models.CharField(_('email_employee'), max_length= 26, unique= True)
    password_employee = models.CharField(_('password_employee'), max_length= 10)

class Owner(Employee):

    cnpj = models.CharField(_('cnpj'), max_length= 18, unique= True)

class User(models.Model):
    username = models.CharField(_('username'), max_length=15, unique=True)
    first_name = models.CharField(_('first name'), max_length=30)
    last_name = models.CharField(_('last name'), max_length=30)
    email = models.EmailField(_('email address'), max_length=255, unique=True)

    def get_absolute_url(self):
        return reverse('users:user_edit', kwargs={'pk': self.pk})
