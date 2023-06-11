# frozen_string_literal: true

class ItemSellPack < ApplicationRecord
  has_many :item_sell_pack_items, dependent: :destroy
end
