class AddIndexToAfiliation < ActiveRecord::Migration
  def change
  	add_index :afiliations, [:campus_id, :student_id], unique: true
  end
end
