class CreateAppoinments < ActiveRecord::Migration
  def change
    create_table :appoinments do |t|
      t.date :appoinment_date
      t.time :app_time
      t.references :physician, index: true
      t.references :patient, index: true

      t.timestamps
    end
  end
end
