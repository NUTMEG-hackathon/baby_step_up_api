module Api
  module Auth
    class RegistrationsController < DeviseTokenAuth::RegistrationsController
        
      private
      def sign_up_params
        params.permit(:name, :email, :password, :password_confirmation, :select_temp, :doing_step)
      end

      def account_update_params
        params.permit(:name, :email)
      end

    end
  end
end

