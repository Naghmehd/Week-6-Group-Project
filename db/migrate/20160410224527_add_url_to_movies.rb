class AddUrlToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :url, :text
  end
end
