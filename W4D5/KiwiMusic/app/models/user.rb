class User < ApplicationRecord

  validates :password_digest, :email, :session_token, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  before_validation :ensure_session_token

  attr_reader :password

  def self.generate_session_token
    SecureRandom.urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= reset_session_token!
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.is_password?(password)
  end

  def find_by_credentials(email, password)
    user = Users.find_by(email: :email)
    return user if user && user.is_password?(password)
    return nil
  end


end
