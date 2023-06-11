# frozen_string_literal: true

class ItemPack < ApplicationRecord
  has_many :item_pack_items, dependent: :destroy
end
