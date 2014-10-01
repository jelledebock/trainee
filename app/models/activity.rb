class Activity < ActiveRecord::Base
	belongs_to :person
	has_many :exercises
	validates :date, presence: true
	validates :remarks, presence: true
	before_save :setParams

	def setParams
	end
end