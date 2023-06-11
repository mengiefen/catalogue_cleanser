class CreateItemPacksAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :item_packs_aliases do |t|
      t.string :alias
      t.boolean :confirmed
      t.references :item_pack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
