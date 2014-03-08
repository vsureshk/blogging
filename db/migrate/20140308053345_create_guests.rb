class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.references :comment
      t.timestamps
    end
  end
end
