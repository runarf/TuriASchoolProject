class Account < ActiveRecord::Base
  
  validates :username, presence: true #, uniqueness: true
  validates :email, presence: true #, uniqueness: true
  validates :password, presence: true, length: { minimum: 3 }
  has_secure_password
  #validates :password_confirmation, presence: true 
  #validates_confirmation_of :password, :message => ": Shit doesn't add up"
end

