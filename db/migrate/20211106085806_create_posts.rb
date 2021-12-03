class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :folder_id
      t.integer :bubble_id

      t.timestamps
    end
  end
end
