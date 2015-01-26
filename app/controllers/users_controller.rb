class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in @user
      flash[:success] = "Congratulations. You're signed up!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    correct_user
    @user = User.find(params[:id])
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end


  private

  def user_params
    params.require(:user).permit(:user_name, :email)
  end

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to login_url, notice: "Please sign in."
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to @user unless current_user?(@user), notice: "You are not authorized to edit this profile"
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
