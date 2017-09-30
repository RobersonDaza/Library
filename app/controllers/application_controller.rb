class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_divise_params, if: :devise_controller?

      def configure_divise_params
          devise_parameter_sanitizer.permit(:sign_up) do |user|
              user.permit(:name, :address, :phone, :city, :email, :password, :password_confirmation)
      end
  end
end
