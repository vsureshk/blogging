class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :section_name
      t.text :section_about
      t.references :document, index: true

      t.timestamps
    end
  end
end
