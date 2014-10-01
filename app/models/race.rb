class Race < Baseactivity
	validates :place, presence: true
	validates :priceMoney, presence: true
	def setParams
		self.type = "Race"
	end
end