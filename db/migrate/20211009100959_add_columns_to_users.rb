class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :oshi, :string
    add_column :users, :oshiga, :string
    add_column :users, :oshibi, :date
  end
end
