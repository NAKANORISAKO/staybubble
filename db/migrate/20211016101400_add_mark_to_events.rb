class AddMarkToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :mark, :string
  end
end
