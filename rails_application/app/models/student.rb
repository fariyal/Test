class Student < ActiveRecord::Base
	

	validates :firstname, presence: {message: "first name can't be blank"}
	validates :lastname, presence: {message: "last name can't be blank"}
	validates :email, presence: {message: "email cant't be blank"}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

has_secure_password

PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  (?=.*[[:^alnum:]]) # Must contain a symbol
/x

validates :password, 
  presence: true, 
  format: {with: PASSWORD_FORMAT}, 
  confirmation: true, 
  on: :create 

validates :password, 
  allow_nil: true,  
  format: {with: PASSWORD_FORMAT}, 
  confirmation: true, 
  on: :update

end
