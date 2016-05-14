class User < ActiveRecord::Base
	has_one :profile
	has_many :articles 
	attr_accessor :password,:password_confirmation
	before_save :encrypt_new_password
	validates_confirmation_of :password 



   def self.authenticate(email,password)
     user = find_by_email(email)
     return user if user && user.authenticated?(password)

   end

   def authenticated?(pass)
   	 self.hashed_password == encrypt(pass)
   end

protected

	def encrypt_new_password
		return if password.blank?
       self.hashed_password=encrypt(password)
	end

	def encrypt(pass)
		Digest::SHA1.hexdigest(pass)
	end

end
