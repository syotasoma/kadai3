class UsersController < ApplicationController
  
  
  
  def edit
    @user = Book.find(params[:id])
  end 
  
  def update
end
