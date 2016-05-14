class Team
	attr_accessor :name, :students

	def initialize(name)
		@name= name
		@students = []
	end

	def add_student
		@students << {first_name: "vishal", last_name: "singh"}
		@students << {first_name: "gaurav", last_name: "bhardwaj"}
	end

	def print_student_detail
		puts add_student
	end
end