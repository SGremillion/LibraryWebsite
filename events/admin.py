from django.contrib import admin
from events.models import Event

class EventAdmin(admin.ModelAdmin):
	model = Event
	list_display = ['day', 'start_time', 'end_time', 'description']

admin.site.register(Event, EventAdmin)