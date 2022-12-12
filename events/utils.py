import datetime
import calendar
from datetime import datetime, timedelta
from calendar import HTMLCalendar
from .models import Event

class Calendar(HTMLCalendar):
	
	def __init__(self, year=None, month=None, events=None):
		self.events = events
		self.year = year
		self.month = month
		super(Calendar, self).__init__()
	
	def formatday(self, day, weekday, events):
		""" Returns a day formatted as table cell. """
		events_from_day = events.filter(day__day = day)
		events_html = "<ul>"
		for event in events_from_day:
			events_html += event.get_absolute_url() + "<br>"
		events_html += "</ul>"
		
		if day != 0:
			return '<td width="150" height="150" style="vertical-align:top; border:1px solid gray; padding:5px;"><strong>%d</strong> %s</td>' % (day, events_html)
		return '<td width="150" height="150" style="border:1px solid gray; padding:5px;"></td>'
	
	def formatweek(self, theweek, events):
		""" Returns the week as a table row. """
		w = ''.join(self.formatday(d, wd, events) for (d, wd) in theweek)
		return '<tr>%s</tr>' % w
	
	def formatmonth(self, theyear, themonth, withyear=True):
		""" Returns the month as a table. """
		events = Event.objects.filter(day__month=themonth)
		
		v = []
		a = v.append
		a('<table style="width:100%" cellpadding="0" cellspacing="0" class="month">')
		a('\n')
		a(self.formatmonthname(theyear, themonth, withyear=withyear))
		a('\n')
		a(self.formatweekheader())
		a('\n')
		for week in self.monthdays2calendar(theyear, themonth):
			a(self.formatweek(week, events))
			a('\n')
		a('</table>')
		a('\n')
		return ''.join(v)