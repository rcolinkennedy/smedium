class UsersController < ApplicationController
  attr_accessor :email
  before_action :get_user

  def register
    @user = User.find_by_profile_url(params[:profile_url])
  end

  def edit
  end

  def update
    @user.update_attributes(params.require(:user).permit(:email))
    redirect_to root_url
  end

  def show
    @user = User.find_by_profile_url(params[:profile_url])
  end

private
  def get_user
    @user = User.find_by_profile_url(params[:id])
  end

end
