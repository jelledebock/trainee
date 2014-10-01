class Person < ActiveRecord::Base
	has_and_belongs_to_many :trains, class_name: "Person"
	has_and_belongs_to_many :trainer, class_name: "Person"
	has_many :profiles
	has_many :activities
  
  	attr_accessor :password
  	before_save :encrypt_password
  
  	validates_confirmation_of :password
  	validates_presence_of :password, :on => :create
  	validates_presence_of :email
  	validates_uniqueness_of :email
  
	 def self.authenticate(email, password)
	    user = find_by_email(email)
	    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	      user
	    else
	      nil
	    end
	 end
	  
	  def encrypt_password
	    if password.present?
	      self.password_salt = BCrypt::Engine.generate_salt
	      self.password_hash = BCrypt::Engine.hash_secret(password, self.password_salt)
	    end
	  end

	def getEmail
		return self.email
	end
end
