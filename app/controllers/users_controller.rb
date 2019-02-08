class UsersController < ApplicationController

  def index
    @users = User.where.not(id: current_user)
  end

  def show
    @user = User.find_by(id: params[:id])
  end
end
