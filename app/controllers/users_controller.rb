class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_only

  def index
    @users = User.all
  end

  def show
    redirect_to root_path
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  def create_via_facebook
    user = User.new
    user.name = params[:user][:name]
    user.email = params[:user][:email]
    user.encrypted_password = "ecu_#{params[:user][:id]}"
    if user.save
      @status = 200
    else
      @status = 400
    end
    render json: @status, layout: false
  end

  private

  def admin_only
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role)
  end

end
