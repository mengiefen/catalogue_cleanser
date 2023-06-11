class CreateProductDuplicates < ActiveRecord::Migration[7.0]
  def change
    create_table :product_duplicates do |t|
      t.integer :canonical_product_id
      t.string :action
      t.decimal :certainity_percentage
      t.integer :mapped_product_id
      t.decimal :levenshtein_distance
      t.decimal :simliarity_score
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
