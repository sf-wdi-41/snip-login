class UsersController < ApplicationController

  def index
    render 'index'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'Signup successful.'
      sign_in(@user)
      redirect_to root_path
    else
      flash[:error] = 'Signup unsuccessful'
      redirect_to signup_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
