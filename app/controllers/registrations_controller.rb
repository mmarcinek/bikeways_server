class RegistrationsController < Devise::RegistrationsController

  def create
    @user = User.new(sign_up_params[:user])
    super
    ApplicationMailer.welcome_email(@user).deliver unless @user.invalid?
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
