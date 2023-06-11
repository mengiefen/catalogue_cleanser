# frozen_string_literal: true

json.extract!(product, :id, :status, :duplication_certainity, :canonical_certainity, :action, :collected_statistics,
              :spelling_mistakes, :catalogue_count, :buy_list_count, :priced_catalogue_count, :average_price, :max_price, :min_price, :standard_deviation, :variance, :inventory_barcode_count, :inventory_derived_period_balances_count, :inventory_internal_requisition_count, :inventory_stock_counts_count, :inventory_stock_levels_count, :inventory_transfer_items_count, :invoice_line_items_count, :point_of_sell_lines_count, :procurement_products_count, :product_supplier_preferences_count, :purchase_order_line_items_count, :rebates_profile_products_count, :receiving_document_line_items_count, :recipes_count, :requisition_line_items_count, :created_at, :updated_at
)
json.url(product_url(product, format: :json))
