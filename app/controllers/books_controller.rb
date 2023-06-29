class BooksController < ApplicationController
  
  def create
     @book = Book.new(book_params)
     @book.user_id = current_user.id
   if @book.save
     flash[:notice] = "Welcome! You have signed up successfully"
     redirect_to book_path(@book.id)
   else
    @books = Book.all
    render :index
   end 
  end 
  
  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end 
  

  def show
    @book = Book.find(params[:id])
    @user = @book.user
    @booknew = Book.new
  end
  
  def edit
    @book = Book.find(params[:id])
    
  end 
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "You have updated book successfully"
    redirect_to book_path(book.id)
  end 
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end 
end 