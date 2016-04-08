class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.title :string, null: false
      t.timestamps null: false
    end
  end
end
