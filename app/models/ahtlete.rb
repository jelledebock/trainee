class Ahtlete < Profile
	validates :height, presence: true
	validates :weight, presence: true
	validates :hr_max, presence: true
	validates :hr_treshold, presence: true
	
	def setParams
		self.type = "Athlete"
	end
end
