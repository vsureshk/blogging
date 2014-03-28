class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :pic_name
      t.string :pic_type
      t.references :imageable,polymorphic: true, index: true

      t.timestamps
    end
  end 
end
