class UsersController < ApplicationController
  attr_accessor :email
  before_action :get_user

  def edit
  end

  def update
    @user.update_attributes(params.require(:user).permit(:email))
    redirect_to root_url
  end

  def show
    # get_user
    @user = User.find_by_profile_url(params[:id])
  end

private
  # def get_user
  #   @user = User.find(params[:id])
  # end

  def get_user
    @user = User.find_by_profile_url(params[:id])
  end
end
