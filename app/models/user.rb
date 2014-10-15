class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
          # this normally doesn't work with rails 4
          # adding protected_attributes to gemfile fixed problem
          # although this is probably not ideal. See strong_params
  # set_primary_key :id
  has_secure_password
  
  before_save { |user| user.email = user.email.downcase }

  validates :name,  presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]{2,}\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
