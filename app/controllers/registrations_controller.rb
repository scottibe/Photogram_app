class RegistrationsController < Devise::RegistrationsController


  private 
  
  def sign_up_params
    params.require(:user).permit(:email, :user_name, :password, :password_confirmation, :full_name)
  end  

  def account_update_params
    params.require(:user).permit(:email, :user_name, :full_name, :password, :password_confirmations, :current_password)
  end  
end  
