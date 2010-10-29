Gem::Specification.new do |s|
  s.name = %q{auth_logic_user_session_helper}
  s.version = "2.0.2"
  
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brent Greeff"]
  s.date = %q{2010-10-29}
  s.description = %q{Convenience methods for use with AuthLogic and Rails. :current_user, user? etc}
  s.email = %q{email@brentgreeff.com}
  s.extra_rdoc_files = [
    "MIT-LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/auth_logic_user_session_helper.rb",
    "lib/auth_logic_user_session_helper/auth_logic_test_helper.rb",
    "lib/auth_logic_user_session_helper/instance_methods.rb",
    "test/auth_logic_user_session_helper_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/brentgreeff/auth_logic_user_session_helper}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Convenience methods for use with AuthLogic and Rails. :current_user, user? etc.}
end
