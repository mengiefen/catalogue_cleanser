# frozen_string_literal: true

json.extract!(brand_alias, :id, :alias, :confirmed, :created_at, :updated_at)
json.url(brand_alias_url(brand_alias, format: :json))
