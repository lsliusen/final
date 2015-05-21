class Tag < ActiveRecord::Base
	has_many :categories
	has_many :recipes, :through => :categories

	validates_presence_of :name
	validates_uniqueness_of :name
end
