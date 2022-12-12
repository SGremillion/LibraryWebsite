from __future__ import unicode_literals
from django.db import models
from django.urls import reverse

class Event(models.Model):
	name = models.CharField(max_length=200, default='')
	day = models.DateField(u'Day of the event', help_text=u'Day of the event')
	description = models.TextField(u'Event description', help_text='Event description')
	start_time = models.TimeField(u'Event starting time', help_text=u'Event starting time')
	end_time = models.TimeField(u'Event ending time', help_text=u'Event ending time')
	
	class Meta:
		verbose_name = u'Event'
		verbose_name_plural = u'Events'
	
	def get_absolute_url(self):
		return u'<a href="#event-view">%s</a>' % (str(self.name))