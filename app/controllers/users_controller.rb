class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def logout
    @user = User.find(params[:id])
  end
end
