class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.string :paragraph_title
      t.references :section, index: true

      t.timestamps
    end
  end
end
