class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :status
      t.decimal :duplication_certainity
      t.decimal :canonical_certainity
      t.string :action
      t.timestamp :collected_statistics_at
      t.integer :spelling_mistakes
      t.integer :catalogue_count
      t.integer :buy_list_count
      t.integer :priced_catalogue_count
      t.decimal :average_price
      t.decimal :max_price
      t.decimal :min_price
      t.decimal :standard_deviation
      t.decimal :variance
      t.integer :inventory_barcode_count
      t.integer :inventory_derived_period_balances_count
      t.integer :inventory_internal_requisition_count
      t.integer :inventory_stock_counts_count
      t.integer :inventory_stock_levels_count
      t.integer :inventory_transfer_items_count
      t.integer :invoice_line_items_count
      t.integer :point_of_sell_lines_count
      t.integer :procurement_products_count
      t.integer :product_supplier_preferences_count
      t.integer :purchase_order_line_items_count
      t.integer :rebates_profile_products_count
      t.integer :receiving_document_line_items_count
      t.integer :recipes_count
      t.integer :requisition_line_items_count

      t.timestamps
    end
  end
end
