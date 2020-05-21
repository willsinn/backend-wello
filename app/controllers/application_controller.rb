class ApplicationController < ActionController::API
    before_action :configure_permitted_parameters, if: :devise_controller?

    def authenticate_user_login
        @user = User.all.find(params[:email])

        if @user.id && @user.email == user_params.user.email
            #1. if current_user is signed check if user_signed_in? - add action
            #2. sign_in & pass session token, must be persisted at frontend
        else
            #error msg, redirect
        end
    end

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_in, :sign_up, :account_update)
    end
end

## sign_in (Devise::SessionsController#create) - Permits only the authentication keys (like email)
## sign_up (Devise::RegistrationsController#create) - Permits authentication keys plus password and password_confirmation
## account_update (Devise::RegistrationsController#update) - Permits authentication keys plus password, password_confirmation and current_password