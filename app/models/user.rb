class User < ActiveRecord::Base
  has_secure_password
  require 'nkf'
  require 'bcrypt'

  class << self
    def authenticate(email, hashed_password)
      user = find_by_email(email)
      if user.try(:hashed_password) && BCrypt::Password.new(user.hashed_password) == user
        user
      else
        nil
      end
    end
  end
end
