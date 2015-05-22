class User < ActiveRecord::Base

    has_secure_password

	has_many :recipes
	has_many :reviews

	validates_uniqueness_of :user_name
	validates_uniqueness_of :email
	validates_presence_of :user_name
	validates_presence_of :email
	validates_presence_of :gender
	validates_presence_of :create_date
    validates_presence_of :password
    validates_presence_of :photo_url
end
