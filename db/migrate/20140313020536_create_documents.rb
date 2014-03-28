class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :doc_type
      t.string :doc_name

      t.timestamps
    end
  end
end
