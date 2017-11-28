class SessionsController < ApplicationController

  def new
    render 'sessions/new'
  end

  def create
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to root_path
    else
      flash.now[:warning] = 'Invalid login.'
      render 'sessions/new'
    end
  end

  def destroy
    sign_out
    redirect_to users_path
  end
end
