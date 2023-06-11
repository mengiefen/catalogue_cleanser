# frozen_string_literal: true

json.extract!(product_duplicate, :id, :canonical_product_id, :action, :certainity_percentage, :mapped_product_id,
              :levenshtein_distance, :simliarity_score, :product_id, :created_at, :updated_at
)
json.url(product_duplicate_url(product_duplicate, format: :json))
