class CreateItemSellPackAliases < ActiveRecord::Migration[7.0]
  def change
    create_table :item_sell_pack_aliases do |t|
      t.string :alias
      t.boolean :confirmed, default: false
      t.references :item_sell_pack, null: false, foreign_key: true

      t.timestamps
    end
  end
end
