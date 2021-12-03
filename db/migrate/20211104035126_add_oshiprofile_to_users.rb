class AddOshiprofileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :oshiprofile, :text
  end
end
