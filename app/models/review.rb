class Review < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :user

	validates_presence_of :title
    validates_presence_of :comment
	validates_presence_of :stars
	validates_presence_of :user_id
	validates_presence_of :recipe_id
	validates_presence_of :date
end
