class User < ActiveRecord::Base

    has_secure_password

	has_many :recipes
	has_many :reviews

    validates :password, :presence => true,
                         :confirmation => true,
                         :length => {:within => 6..40},
                         :on => :create
    validates :password, :confirmation => true,
                         :length => {:within => 6..40},
                         :allow_blank => true,
                         :on => :update
	validates_uniqueness_of :user_name
	validates_uniqueness_of :email
	validates_presence_of :user_name
	validates_presence_of :email
	validates_presence_of :gender
	validates_presence_of :create_date
    validates_presence_of :photo_url
    validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
