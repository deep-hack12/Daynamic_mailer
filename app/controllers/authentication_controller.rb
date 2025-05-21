class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:login]

  def login
    @user = User.find_by(email: params[:email])

    if @user.nil?
      render json: { error: 'Email not found' }, status: :unauthorized
    elsif @user.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      UserMailer.sign_in_email(@user).deliver_now
      render json: { token: token }, status: :ok
    else
      render json: { error: 'Invalid password' }, status: :unauthorized
    end
  end
end