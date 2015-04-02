class CreateAfiliations < ActiveRecord::Migration
  def self.up
    create_table :afiliations, id: false do |t|
    	t.integer   :campus_id, null: false
    	t.integer   :student_id, null: false
      t.timestamps null: false
    end
  end

  def self.down
  	drop_table :afiliations
  end
end
