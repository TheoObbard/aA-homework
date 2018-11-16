require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(10).on(:create) }
end

describe "is_password?" do
  pw = BCrypt::Password('password')
  it "verifies a password_digest is a password" do
    expect(is_password?('password')).to eq(pw)
  end
end
