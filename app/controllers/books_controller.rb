class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def view
  end
end
