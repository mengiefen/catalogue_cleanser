# frozen_string_literal: true

json.extract!(item_sell_pack_alias, :id, :alias, :confirmed, :ItemSellPack_id, :created_at, :updated_at)
json.url(item_sell_pack_alias_url(item_sell_pack_alias, format: :json))
