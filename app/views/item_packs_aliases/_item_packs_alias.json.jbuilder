# frozen_string_literal: true

json.extract!(item_packs_alias, :id, :alias, :confirmed, :created_at, :updated_at)
json.url(item_packs_alias_url(item_packs_alias, format: :json))
