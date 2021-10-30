class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    #renamed signup
    @user = User.new
  end 

  def create 
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
    #probably could achieve this with if !current_user
    if params[:id].to_i != session[:user_id]
      redirect_to user_path(@user)
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def destroy
    #should create a helper method for this & edit
    if params[:id].to_i != session[:user_id]
      redirect_to user_path(@user)
    end
    @user.instruments.each do |i|
      i.destroy
    end
    @user.destroy
    redirect_to signup_path
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(
      :username, 
      :email, 
      :password, 
      :password_confirmation)
  end
end