class CreateBubbles < ActiveRecord::Migration[6.1]
  def change
    create_table :bubbles do |t|
      t.string :title
      t.string :label
      t.text :link
      t.date :date
      t.text :content
      t.integer :user_id
      t.string :image
      t.integer :post_id

      t.timestamps
    end
  end
end
