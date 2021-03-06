module AuthLogic
  module TestHelper
    def login_as(someone)
      login_user(someone)
    end
    
    def login_user(user)
      raise 'Cannot login, user is not a User' unless user.is_a? User
      UserSession.create(user)
    end
    
    def logout
      logout_user
    end
    
    def logout_user
      @request.session[:user_credentials] = nil
    end
  end
end
