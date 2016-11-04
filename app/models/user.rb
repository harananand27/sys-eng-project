class User < ActiveRecord::Base
	has_many :citations

	has_secure_password

# Cannot sign up with same email
	validates_uniqueness_of :email

# Email must be in correct format
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
