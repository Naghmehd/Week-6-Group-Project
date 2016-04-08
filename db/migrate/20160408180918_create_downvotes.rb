class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.integer :movie_id, null: false
      t.timestamps null: false
    end
  end
end
