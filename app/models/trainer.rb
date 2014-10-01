class Trainer < Profile
	validates :salary, presence: true
	validates :numberOfLikes, presence: true
	validates :experience, presence: true
	
	def setParams
		self.type = "Trainer"
	end
end
