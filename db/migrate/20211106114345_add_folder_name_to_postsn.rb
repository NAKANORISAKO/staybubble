class AddFolderNameToPostsn < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :folder_name, :text
  end
end
