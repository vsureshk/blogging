class CreateImageables < ActiveRecord::Migration
  def change
    create_table :imageables do |t|
      t.string :image_name

      t.timestamps
    end
    remove_column :sections,:section_about
  end
end
