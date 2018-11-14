# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

  validates :username, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: {message: "Password can't be blank"}
  validates :password, length: {minimum: 6, allow_nil: true}
  before_validation :ensure_session_token


  def self.find_by_credentials
    #This method takes in a username and a password and returns the user that matches
  end

  def self.generate_session_token
    # uses SecureRandom::urlsafe_base64 and returns a 16-digit pseudorandom string
  end

  def reset_session_token!
    #This method resets the user's session_token and saves the user
  end

  def ensure_session_token
    # This method makes sure that the user has a session_token set, setting one if none exists
  end

  def password=
    #This method sets @password equal to the argument given so that the appropriate validation can happen
    #This method also encrypts the argument given and saves it as this user's password_digest
    #Remember: you have to add an attr_reader for password for the validation to occur!
  end


end
