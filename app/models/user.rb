class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false},
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

  validates_confirmation_of :password, on: :create
  # validates_presence_of :password_confirmation

  validates :name,
    presence: true,
    length: {maximum: 20}

  def self.authenticate email,password
    User.find_by_email(email).try(:authenticate, password)
  end
end
