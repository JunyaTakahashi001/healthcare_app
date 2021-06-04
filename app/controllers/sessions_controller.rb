class SessionsController < ApplicationController
  # ログイン処理
  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to healths_path
    else
      render 'home/index'
    end
  end

  # ログアウト処理
  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
