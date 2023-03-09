class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :overview, null: false
      t.string :poster_url, null: false
      t.decimal :rating, null: false

      t.timestamps
    end
  end
end
