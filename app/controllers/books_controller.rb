class BooksController < ApplicationController

def index
 @books = Book.all
end

def show
 @book = Book.find(params[:id])
end

def edit
 @book = Book.find(params[:id])
end

def update
 redirect_to books_path
end

def new
 @book = Book.new
end

def destroy
 @book = Book.find(params[:id])
 @book.destroy
 redirect_to books_path
end

def create
 @book = Book.new(book_params)
  if @book.save
   redirect_to books_path, notice: "Book successfully added."
   else
   redirect_to books_path, notice: "Error {msg}"
  end
end

private
def book_params
    params.require(:book).permit(:title,:author, :publisher, :genre)
  end
end
