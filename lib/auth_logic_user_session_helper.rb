require 'auth_logic_user_session_helper/instance_methods'

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
  end    
end

ActionController::Base.send(:include, AuthLogic::UserSessionHelper)

if RAILS_ENV.eql? 'test'
  require 'test_help'
  require 'auth_logic_user_session_helper/auth_logic_test_helper'
  ActiveSupport::TestCase.send(:include, AuthLogic::TestHelper)
end
