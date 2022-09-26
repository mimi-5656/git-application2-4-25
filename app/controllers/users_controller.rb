class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "User was successfully created."
       redirect_to user_path(@user.id)
    else
      @users = User.all
      render :edit
    end
  end

  def edit
    @user = current_user
  end

   def index
    @user = current_user
    @users = User.all
    @books = Book.all
    @book = Book.new
   end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end


