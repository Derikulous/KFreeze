class UsersController < ApplicationController

  def index
    @users = User.all
    @users = User.search(params[:search])
    @users = User.search(@search)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "Congratulations. You're signed up!"
      sign_in @user
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

    if @user.update user_params
      flash[:notice] = "Updated user."
      redirect_to users_url
    else
      render 'new'
  end
end

  def destroy
    @user.destroy
    flash[:notice] = "User deleted."
    redirect_to users_url
  end

  private

    def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :user_name, :email, :password, :password_confirmation)
  end
end
