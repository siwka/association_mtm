class Afiliation < ActiveRecord::Base
  belongs_to :campus
  belongs_to :student
end
