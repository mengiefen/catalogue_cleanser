# frozen_string_literal: true

class ItemMeasure < ApplicationRecord
  has_many :item_measure_items, dependent: :destroy
end
