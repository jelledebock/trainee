class Profile < ActiveRecord::Base
	belongs_to :person

	def setParams
		self.type = "Both"
	end
end
