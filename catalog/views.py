from django.shortcuts import render
from .models import Book, Author, BookInstance, Genre, Language, Comment
from django.views import generic
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.mixins import PermissionRequiredMixin
from django.shortcuts import get_object_or_404
from django.http import HttpResponseRedirect
from django.urls import reverse
import datetime
from datetime import date, timedelta
from django.contrib.auth.decorators import login_required, permission_required

# from .forms import RenewBookForm
from catalog.forms import RenewBookForm
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Author

import random

def index(request):
    """View function for home page of site."""
    # Generate counts of some of the main objects
    num_books = Book.objects.all().count()
    num_instances = BookInstance.objects.all().count()
    
    # Available copies of books
    num_instances_available = BookInstance.objects.filter(status__exact='a').count()
    num_authors = Author.objects.count()
    
    # Available languages and genres
    num_languages = Language.objects.count()
    num_genres = Genre.objects.count()

    # Number of visits to this view, as counted in the session variable.
    num_visits = request.session.get('num_visits', 1)
    request.session['num_visits'] = num_visits+1

    # Random Book from collection
    random_book = random.choice(Book.objects.all())
    
    context = {
        'num_books': num_books,
        'num_instances': num_instances,
        'num_instances_available': num_instances_available,
        'num_authors': num_authors,
        'num_genres': num_genres,
        'num_languages': num_languages,
        'num_visits': num_visits,
        'random_book': random_book
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)

def search_books(request):
    if request.method == "POST":
        searched = request.POST['searched']
        books = Book.objects.filter(title__icontains=searched)
        authorsF = Book.objects.filter(author__first_name__icontains=searched)
        authorsL = Book.objects.filter(author__last_name__icontains=searched)
        language = Book.objects.filter(language__name__icontains=searched)
        context = {
            'searched':searched,
            'books':books,
            'authorsF':authorsF,
            'authorsL':authorsL,
            'languages':language,
        }
        return render(request,'catalog/search_books.html',context)
    else:
        return render(request,'catalog/search_books.html',{})


class BookListView(generic.ListView):
    """Generic class-based view for a list of books."""
    model = Book
    paginate_by = 10


class BookDetailView(generic.DetailView):
    model = Book
 
    def get_context_data(self, *args, **kwargs):
        context = super(BookDetailView, self).get_context_data(*args, **kwargs)
        context['book_list'] = Book.objects.all()
        context['num_comments'] = Comment.objects.filter(post=self.object).count()
        return context

class AuthorListView(generic.ListView):
    """Generic class-based list view for a list of authors."""
    model = Author
    paginate_by = 10


class AuthorDetailView(generic.DetailView):
    """Generic class-based detail view for an author."""
    model = Author
    
    def get_context_data(self, *args, **kwargs):
        context = super(AuthorDetailView, self).get_context_data(*args, **kwargs)
        context['book_list'] = Book.objects.all()
        return context


class GenreListView(generic.ListView):
    """Generic class-based list view for a list of genres."""
    model = Genre
    paginate_by = 10

class GenreDetailView(generic.DetailView):
    """Generic class-based detail view for a genre."""
    model = Genre


class LanguageListView(generic.ListView):
    """Generic class-based list view for a list of languages."""
    model = Language
    paginate_by = 10

class LanguageDetailView(generic.DetailView):
    """Generic class-based detail view for a language."""
    model = Language


class LoanedBooksByUserListView(LoginRequiredMixin, generic.ListView):
    """Generic class-based view listing books on loan to current user."""
    model = BookInstance
    template_name = 'accounts/home'
    paginate_by = 10

    def get_queryset(self):
        return BookInstance.objects.filter(borrower=self.request.user).filter(status__exact='o').order_by('due_back')


class LoanedBooksAllListView(generic.ListView):
    """Generic class-based view listing all books on loan. Only visible to users with can_mark_returned permission."""
    model = BookInstance
    template_name = 'catalog/bookinstance_list_borrowed_all.html'
    paginate_by = 10

    def get_queryset(self):
        return BookInstance.objects.filter(status__exact='o').order_by('due_back')


@login_required
def renew_book_librarian(request, pk):
    """View function for renewing a specific BookInstance by librarian."""
    book_instance = get_object_or_404(BookInstance, pk=pk)

    # If this is a POST request then process the Form data
    if request.method == 'POST':

        # Create a form instance and populate it with data from the request (binding):
        form = RenewBookForm(request.POST)

        # Check if the form is valid:
        if form.is_valid():
            # process the data in form.cleaned_data as required (here we just write it to the model due_back field)
            book_instance.due_back = form.cleaned_data['renewal_date']
            book_instance.save()

            # redirect to a new URL:
            return HttpResponseRedirect(reverse('all-borrowed'))

    # If this is a GET (or any other method) create the default form
    else:
        proposed_renewal_date = date.today() + timedelta(weeks=3)
        form = RenewBookForm(initial={'renewal_date': proposed_renewal_date})

    context = {
        'form': form,
        'book_instance': book_instance,
    }
    
    return render(request, 'catalog/book_renew_librarian.html', context)
    
@login_required
def user_borrow_book(request, pk):
	book_instance = get_object_or_404(BookInstance, pk=pk)
	
	#If this is a POST request then process the Form data
	if request.method == 'POST':
		
		#Create a form instance and populate it with data from the request (binding):
		form = RenewBookForm(request.POST)
		
		#Check if the form is valid:
		if form.is_valid():
			#process the data in form.cleaned_data as required (here we just write it to the model due_back field)
			book_instance.due_back = form.cleaned_data['renewal_date']
			book_instance.borrower = request.user.libraryuser
			book_instance.status = 'o'
			book_instance.save()
			
			# redirect to a new URL:
			return HttpResponseRedirect(reverse('home'))
		
	# If this is a GET (or any other method) create the default form
	else:
		proposed_renewal_date = date.today() + timedelta(weeks=3)
		form = RenewBookForm(initial={'renewal_date': proposed_renewal_date})
	
	context = {
		'form': form,
		'book_instance': book_instance,
	}
	
	return render(request, 'catalog/book_renew_librarian.html', context)
	
	


class AuthorCreate(PermissionRequiredMixin, CreateView):
    model = Author
    fields = ['first_name', 'last_name', 'date_of_birth', 'date_of_death']
    initial = {'date_of_death': '11/06/2020'}
    permission_required = 'catalog.can_mark_returned'


class AuthorUpdate(PermissionRequiredMixin, UpdateView):
    model = Author
    fields = '__all__' # Not recommended (potential security issue if more fields added)
    permission_required = 'catalog.can_mark_returned'


class AuthorDelete(PermissionRequiredMixin, DeleteView):
    model = Author
    success_url = reverse_lazy('authors')
    permission_required = 'catalog.can_mark_returned'


class BookCreate(PermissionRequiredMixin, CreateView):
    model = Book
    fields = ['title', 'author', 'summary', 'isbn', 'genre', 'language', 'image']
    permission_required = 'catalog.can_mark_returned'


class BookUpdate(PermissionRequiredMixin, UpdateView):
    model = Book
    fields = ['title', 'author', 'summary', 'isbn', 'genre', 'language', 'image']
    permission_required = 'catalog.can_mark_returned'


class BookDelete(PermissionRequiredMixin, DeleteView):
    model = Book
    success_url = reverse_lazy('books')
    permission_required = 'catalog.can_mark_returned'


from .forms import CommentForm
from datetime import datetime
from django.shortcuts import redirect

def add_comment(request, pk):
    eachBook = Book.objects.get(id=pk)

    form = CommentForm(instance=eachBook)
    if request.method =='POST':
        form = CommentForm(request.POST, instance=eachBook)
        if form.is_valid():
            name = request.user.username
            body = form.cleaned_data['body']

            c = Comment(post=eachBook, name=name, body=body, date_added=datetime.now())
            c.save()
        
            return redirect(reverse('book-detail',kwargs={'pk':int(pk)}))
        else:
            print('form is invalid')
    else:
        form = CommentForm()

    context = {
        'form': form
    }
    
    return render(request, 'add_comment.html', context)

def delete_comment(request, pk):
    comment = Comment.objects.filter(post=pk).last()
    comment.delete()
    return redirect(reverse('book-detail',kwargs={'pk':int(pk)}))
