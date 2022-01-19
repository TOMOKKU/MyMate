class ChangeNameColumnUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :uname, :string
    add_column :users, :name, :string
  end
end
