class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.string :app_type

      t.timestamps
    end
  end
end
