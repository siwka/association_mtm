module StudentsHelper

	def json_data
		load_student_lib "#{Rails.root}/tmp/student_data.json"
	end

	def load_student_lib( filename )
	  JSON.parse( IO.read(filename) )
	end

  def sort_by_grade students
  	students = students_grade_order students
		students_return_grades students.sort! { |a,b| (a["grade"] == b["grade"]) ? a["first_name"].downcase <=> b["first_name"].downcase : a["grade"] <=> b["grade"] } 
  end

  def students_grade_order students
  	students.each do |student|
  		student["grade"] = case student["grade"].downcase
  		when "freshman"
  			1
  		when "sophomore"
  			2
  		when "junior"
  			3
  		when "senior"
  			4
  		else
  			5
  		end
  	end
  end

def students_return_grades students
  	students.each do |student|
  		student["grade"] = case student["grade"].to_i
  		when 1
  			"freshman"
  		when 2
  			"sophomore"
  		when 3
  			"junior"
  		when 4
  			"senior"
  		else
  			"Who are you?"
  		end
  	end
  end  
end

# Freshman
# Sophomore
# Junior
# Senior
