class User < ActiveRecord::Base
  has_secure_password
  require 'nkf'
  require 'bcrypt'

  class << self
    def authenticate(email, password)
      user = find_by_email(email)
      if user.authenticate(password)
        user
      else
        nil
      end
    end
  end
end
