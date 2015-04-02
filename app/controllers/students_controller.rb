class StudentsController < ApplicationController
  include StudentsHelper
 
  def index
    @students = json_data
    sort_by_grade @students
  end

end
