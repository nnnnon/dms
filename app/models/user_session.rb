 # app/models/user_session.rb
  class UserSession < Authlogic::Session::Base
	# configuration here, see documentation for sub modules of Authlogic::Session
def to_key
  self.keys.to_a
end

  end
