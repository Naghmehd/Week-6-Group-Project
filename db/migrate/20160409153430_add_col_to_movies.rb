class AddColToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :upvotes_count, :integer
  end
end
