class Campus < ActiveRecord::Base
	has_many :afiliations
	has_many :students, through: :afiliation
end
