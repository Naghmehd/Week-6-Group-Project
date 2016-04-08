class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.title :string 
      t.timestamps null: false
    end
  end
end
