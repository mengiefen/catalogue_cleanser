# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_611_083_211) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'abbreviations', force: :cascade do |t|
    t.string('letters')
    t.bigint('dictionary_entry_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['dictionary_entry_id'], name: 'index_abbreviations_on_dictionary_entry_id')
  end

  create_table 'actions', force: :cascade do |t|
    t.string('type')
    t.integer('context_id')
    t.text('description')
    t.jsonb('before')
    t.jsonb('after')
    t.string('status')
    t.string('error')
    t.boolean('requires_approval', default: false)
    t.boolean('approved')
    t.bigint('approved_by_id')
    t.datetime('approved_at', precision: nil)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['approved_by_id'], name: 'index_actions_on_approved_by_id')
  end

  create_table 'brand_aliases', force: :cascade do |t|
    t.string('alias')
    t.boolean('confirmed', default: false)
    t.bigint('brand_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['brand_id'], name: 'index_brand_aliases_on_brand_id')
  end

  create_table 'brands', force: :cascade do |t|
    t.string('name')
    t.integer('count')
    t.boolean('canonical', default: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'comments', force: :cascade do |t|
    t.text('message')
    t.bigint('user_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['user_id'], name: 'index_comments_on_user_id')
  end

  create_table 'dictionary_entries', force: :cascade do |t|
    t.string('phrase')
    t.boolean('canonical')
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'item_measures', force: :cascade do |t|
    t.string('name')
    t.boolean('canonical', default: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'item_measures_aliases', force: :cascade do |t|
    t.string('alias')
    t.boolean('confirmed', default: false)
    t.bigint('item_measure_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['item_measure_id'], name: 'index_item_measures_aliases_on_item_measure_id')
  end

  create_table 'item_packs', force: :cascade do |t|
    t.string('name')
    t.boolean('canonical')
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'item_packs_aliases', force: :cascade do |t|
    t.string('alias')
    t.boolean('confirmed')
    t.bigint('item_pack_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['item_pack_id'], name: 'index_item_packs_aliases_on_item_pack_id')
  end

  create_table 'item_sell_pack_aliases', force: :cascade do |t|
    t.string('alias')
    t.boolean('confirmed', default: false)
    t.bigint('item_sell_pack_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['item_sell_pack_id'], name: 'index_item_sell_pack_aliases_on_item_sell_pack_id')
  end

  create_table 'item_sell_packs', force: :cascade do |t|
    t.string('name')
    t.boolean('canonical', default: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'product_duplicates', force: :cascade do |t|
    t.integer('canonical_product_id')
    t.string('action')
    t.decimal('certainity_percentage')
    t.integer('mapped_product_id')
    t.decimal('levenshtein_distance')
    t.decimal('simliarity_score')
    t.bigint('product_id', null: false)
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['product_id'], name: 'index_product_duplicates_on_product_id')
  end

  create_table 'products', force: :cascade do |t|
    t.string('status')
    t.decimal('duplication_certainity')
    t.decimal('canonical_certainity')
    t.string('action')
    t.datetime('collected_statistics_at', precision: nil)
    t.integer('spelling_mistakes')
    t.integer('catalogue_count')
    t.integer('buy_list_count')
    t.integer('priced_catalogue_count')
    t.decimal('average_price')
    t.decimal('max_price')
    t.decimal('min_price')
    t.decimal('standard_deviation')
    t.decimal('variance')
    t.integer('inventory_barcode_count')
    t.integer('inventory_derived_period_balances_count')
    t.integer('inventory_internal_requisition_count')
    t.integer('inventory_stock_counts_count')
    t.integer('inventory_stock_levels_count')
    t.integer('inventory_transfer_items_count')
    t.integer('invoice_line_items_count')
    t.integer('point_of_sell_lines_count')
    t.integer('procurement_products_count')
    t.integer('product_supplier_preferences_count')
    t.integer('purchase_order_line_items_count')
    t.integer('rebates_profile_products_count')
    t.integer('receiving_document_line_items_count')
    t.integer('recipes_count')
    t.integer('requisition_line_items_count')
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
  end

  create_table 'users', force: :cascade do |t|
    t.string('email', default: '', null: false)
    t.string('encrypted_password', default: '', null: false)
    t.string('reset_password_token')
    t.datetime('reset_password_sent_at')
    t.datetime('remember_created_at')
    t.datetime('created_at', null: false)
    t.datetime('updated_at', null: false)
    t.index(['email'], name: 'index_users_on_email', unique: true)
    t.index(['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true)
  end

  add_foreign_key 'abbreviations', 'dictionary_entries'
  add_foreign_key 'actions', 'users', column: 'approved_by_id'
  add_foreign_key 'brand_aliases', 'brands'
  add_foreign_key 'comments', 'users'
  add_foreign_key 'item_measures_aliases', 'item_measures'
  add_foreign_key 'item_packs_aliases', 'item_packs'
  add_foreign_key 'item_sell_pack_aliases', 'item_sell_packs'
  add_foreign_key 'product_duplicates', 'products'
end
