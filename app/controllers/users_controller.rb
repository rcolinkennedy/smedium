class UsersController < ApplicationController
  attr_accessor :email, :image
  before_action :get_user

  def register
    @user = User.find_by_profile_url(params[:profile_url])
  end

  def settings
    if current_user.blank?
      redirect_to root_url
    else
      @user = current_user
    end
  end

  def edit
  end

  def update
    @user.update_attributes(params.require(:user).permit(:email))
    if @user.save
      redirect_to root_url
    else
      render 'register'
    end
  end

  def show
    @user = User.find_by_profile_url(params[:profile_url])
  end

private
  def get_user
    @user = User.find_by_profile_url(params[:id])
  end

end
