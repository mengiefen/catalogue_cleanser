# frozen_string_literal: true

json.extract!(abbreviation, :id, :letters, :DictionaryEntry_id, :created_at, :updated_at)
json.url(abbreviation_url(abbreviation, format: :json))
