class CreateUpvotes < ActiveRecord::Migration
  def change
    create_table :upvotes do |t|
      t.integer :movie_id, null: false
      t.timestamps null: false
    end
  end
end
