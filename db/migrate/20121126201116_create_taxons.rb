class CreateTaxons < ActiveRecord::Migration
  def change
    create_table :taxons do |t|
      t.integer :parent_id
      t.string :name
      t.string :permalink
      t.text :description

      t.timestamps
    end
  end
end
