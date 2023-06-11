# frozen_string_literal: true

json.extract!(item_measures_alias, :id, :alias, :confirmed, :created_at, :updated_at)
json.url(item_measures_alias_url(item_measures_alias, format: :json))
