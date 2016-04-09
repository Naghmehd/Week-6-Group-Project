class ChangeColMovies < ActiveRecord::Migration
  def change
    change_column :movies, :upvotes_count, :integer, default: 0
  end
end
