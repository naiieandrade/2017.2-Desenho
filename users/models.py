from django.db import models
from django.core.urlresolvers import reverse
from django.utils.translation import gettext as _


class User(models.Model):
    username = models.CharField(_('username'), max_length=15, unique=True)
    first_name = models.CharField(_('first name'), max_length=30)
    last_name = models.CharField(_('last name'), max_length=30)
    email = models.EmailField(_('email address'), max_length=255, unique=True)

    def get_absolute_url(self):
        return reverse('users:user_edit', kwargs={'pk': self.pk})
