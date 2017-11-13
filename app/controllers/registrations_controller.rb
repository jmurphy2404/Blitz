class RegistrationsController < Devise::RegistrationsController
 before_action :configure_permitted_parameters, if: :devise_controller?
  


  def valet_new
    @user = User.new user_type: :valet
    render :new
  end

  





  def after_sign_in_path_for(resource)
    jobs_path(@user)
  end

  def after_sign_up_path_for(resource)
    edit_user_path(@user)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :user_type) } 
  end




end
