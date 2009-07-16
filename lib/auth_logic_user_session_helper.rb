module AuthLogic
  module UserSessionHelper
    
    def self.included(base)
      base.class_eval do
        include InstanceMethods
        
        helper_method :current_user
        helper_method :user?
        helper_method :no_user?
      end
    end
    
    module InstanceMethods
      def current_user_session
        return @current_user_session if defined?(@current_user_session)
        @current_user_session = UserSession.find
      end
      
      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.record
      end
      
      def user?
        return current_user.is_a? User
      end
      
      def no_user?
        return current_user.nil?
      end
      
      def user_required
        return if user?
        
        store_location
        flash[:error] = 'Please log in first'
        redirect_to login_url
      end
      
      def no_user_required
        return if no_user?
        
        flash[:error] = 'You are already logged in'
        redirect_to root_url
      end
      
      # Redirect back
      
      def store_location
        session[:return_to] = request.request_uri
      end
      
      def redirect_back_or_default(default)
        redirect_to(session[:return_to] || default)
        session[:return_to] = nil
      end
    end
  end
end
