require 'auth_logic_user_session_helper'
ActionController::Base.send(:include, AuthLogic::UserSessionHelper)
