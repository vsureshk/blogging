class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.datetime :created_date
      t.integer :price_cents
      t.timestamps
    end
  end
end
