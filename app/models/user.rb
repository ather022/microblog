class User < ActiveRecord::Base
  #attr_accessible :name, :email   #this doesn't play nice in Rails 4
  #set_primary_key :id
  
  validates :name,  presence: true, length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]{2,}\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


end
