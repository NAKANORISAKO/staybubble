class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      t.string :title
      t.text :content
      t.boolean :disp_flg
      t.datetime :start_time
      t.datetime :end
      t.string :allDay
      t.integer :user_id
      t.timestamps


    end
  end
end
