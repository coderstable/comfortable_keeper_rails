class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
  length: {maximum: 100},
  format: { with: VALID_EMAIL_REGEX },
  # 大文字小文字を無視して、レコードで一意になるようにチェック
  uniquness: { case_sensitive: false }

  validates :password, length: { minimum: 6, maximum: 100 }
  # validates :password, length: { in: 6..100 }

  has_secure_password

end
