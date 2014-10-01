class Plannedactivity < Activity
	def setParams
		self.type = "PlannedActivity"
		self.status ="planned"
	end
end