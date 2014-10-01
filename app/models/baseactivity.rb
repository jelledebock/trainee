class Baseactivity < Activity
	validates :HRavg, presence: true
	validates :HRmax, presence: true
	validates :speed, presence: true
	validates :RPE, presence: true

	def setParams
		self.type = "BaseActivity"
		self.status = "done"
	end
end
