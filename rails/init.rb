require 'auth_logic_user_session_helper'
ActionController::Base.send(:include, AuthLogic::UserSessionHelper)

if RAILS_ENV.eql? 'test'
  require 'test_help'
  require 'auth_logic_user_session_helper/auth_logic_test_helper'
  ActiveSupport::TestCase.send(:include, AuthLogic::TestHelper)
end
