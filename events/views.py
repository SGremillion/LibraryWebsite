from __future__ import unicode_literals
from django.contrib import admin
from .models import Event
import datetime
import calendar
from django.urls import reverse
from django.views import generic
from calendar import HTMLCalendar
from django.utils.safestring import mark_safe
from .utils import Calendar

class CalendarView(generic.ListView):
	model = Event
	template_name = 'calendar.html'
	
	def get_context_data(self, extra_context=None):
		after_day = self.request.GET.get('day__gte', None)
		extra_context = extra_context or {}

		if not after_day:
			d = datetime.date.today()
		else:
			try:
				split_after_day = after_day.split('-')
				d = datetime.date(year=int(split_after_day[0]), month=int(split_after_day[1]), day=1)
			except:
				d = datetime.date.today()

		previous_month = datetime.date(year=d.year, month=d.month, day=1)  # find first day of current month
		previous_month = previous_month - datetime.timedelta(days=1)  # backs up a single day
		previous_month = datetime.date(year=previous_month.year, month=previous_month.month, day=1)  # find first day of previous month

		last_day = calendar.monthrange(d.year, d.month)
		next_month = datetime.date(year=d.year, month=d.month, day=last_day[1])  # find last day of current month
		next_month = next_month + datetime.timedelta(days=1)  # forward a single day
		next_month = datetime.date(year=next_month.year, month=next_month.month, day=1)  # find first day of next month

		extra_context['previous_month'] = reverse('calendar') + '?day__gte=' + str(previous_month)
		extra_context['next_month'] = reverse('calendar') + '?day__gte=' + str(next_month)

		cal = Calendar(d.year, d.month)
		cal.setfirstweekday(calendar.SUNDAY)
		html_calendar = cal.formatmonth(d.year, d.month, withyear=True)
		extra_context['calendar'] = mark_safe(html_calendar)
		extra_context['event_list'] = Event.objects.filter(day__month=d.month).order_by('day')
		return super(CalendarView, self).get_context_data(**extra_context)