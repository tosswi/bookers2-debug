class AddGroupToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :group, :string
  end
end
