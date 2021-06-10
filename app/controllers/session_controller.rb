class SessionController < ApplicationController
  
  def create
    user = User.where(email: params[:email], password: params[:password])
    
    session[:user_id] = user.id
    if user.present?
      render json: user
    else
      render json: user
    end
  end

end
