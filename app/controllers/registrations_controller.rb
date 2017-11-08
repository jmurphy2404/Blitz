class RegistrationsController < Devise::RegistrationsController
 before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected



  def valet_new
    @user = User.new user_type: :valet
    render :new
  end

  def valet_create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def after_sign_in_path_for(resource)
		new_job_path(@user)
  end

  def after_sign_up_path_for(resource)
		edit_user_path(@user)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :user_type) } 
  end




end
