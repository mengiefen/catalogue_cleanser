class CreateBrandAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_aliases do |t|
      t.string :alias
      t.boolean :confirmed, default: false
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
