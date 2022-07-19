class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    def encode_token(payload)
        JWT.encode(payload, 'SecretKey')
      end
    
      def auth_header
        request.headers['Authorization']
      end
    
      def decoded_token
        if auth_header
          token = auth_header.split(' ')[1]
          begin
            JWT.decode(token, 'SecretKey', true, algorithm: 'HS256')
          rescue JWT::DecodeError
            nil
          end
        end
      end
    
      def logged_in_user
        if decoded_token
          user_id = decoded_token[0]['user_id']
          @user = User.find_by(id: user_id)
        end
      end
    
      def logged_in?
        !!logged_in_user
      end
    
      def authorized
        render json: { message: 'you have to log in first' }, status: :unauthorized unless logged_in?
      end
end
