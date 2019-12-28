class GradesTable

	attr_reader :average, :overall_grade

	def initialize
		@points = @courses = 0
	end
	
	def <<(points)
		@points += points
		@courses += 1
		self
	end
	
	def average
		fail "No courses" if @courses.zero?
		Float(@points) / @courses
	end
	
	def overall_grade
		case average
		when (41...51)
			'F'
		when (51...61)
			'E'
		when (61...71)
			'D'
		when (71...81)
			'C'
		when (81...91)
			'B'
		when (91..100)
			'A'
		else
			'FX'
		end
	end
end

student_points = GradesTable.new
student_points << 98 << 82 << 100 << 88 << 99
puts student_points.average, student_points.overall_grade