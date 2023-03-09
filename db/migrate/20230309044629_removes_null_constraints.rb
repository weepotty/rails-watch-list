class RemovesNullConstraints < ActiveRecord::Migration[7.0]
  change_column_null(:movies, :poster_url, true)
  change_column_null(:movies, :rating, true)
end
