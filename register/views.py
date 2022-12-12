
from django.shortcuts import render, redirect
from django.contrib import messages
from .forms import UserRegisterForm
from django.dispatch import receiver
from django.db.models.signals import pre_save, post_save
from django.contrib.auth.models import User
from catalog.models import LibraryUser

def register(request):

    if request.method == 'POST':
        form = UserRegisterForm(request.POST)
        if form.is_valid():
            form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, "Account Registration Successful! Please allow up to one business day for a "
                                      "Staff member to verify your new account!")
            return redirect('/accounts/home')
    else:
        form = UserRegisterForm()
    return render(request, 'register/register.html', {'form': form})

@receiver(pre_save, sender=User)
def set_new_user_inactive(sender, instance, **kwargs):
    if instance._state.adding is True:
        print("Creating Inactive User")
        instance.is_active = True
    else:
        print("Updating User Record")

@receiver(post_save, sender = User)

def create_libraryUser(sender, instance, created, **kwargs):
	if created:
		libraryUser = LibraryUser.objects.create(user = instance, is_borrowing = True)
		libraryUser.save()