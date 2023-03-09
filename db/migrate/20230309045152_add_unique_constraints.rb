class AddUniqueConstraints < ActiveRecord::Migration[7.0]
  def change
    add_index :movies, :title, unique: true
    add_index :lists, :name, unique: true
  end
end
