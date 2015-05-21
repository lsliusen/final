class Recipe < ActiveRecord::Base
	has_many :categories
	has_many :tags, :through => :categories
	has_many :reviews
	belongs_to :user

	validates_presence_of :title
	validates_presence_of :photo_url
	validates_presence_of :ingredients
	validates_presence_of :instruction
	validates_presence_of :duration
	validates_presence_of :user_id
	validates_presence_of :date
	validates_presence_of :stars
    validates_presence_of :num_reviews
end
