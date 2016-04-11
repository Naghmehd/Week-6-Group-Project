class AddAtagToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :a, :text
  end
end
