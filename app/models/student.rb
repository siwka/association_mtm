class Student < ActiveRecord::Base
	has_many :afiliations
	has_many :campuses, through: :afiliation
end
