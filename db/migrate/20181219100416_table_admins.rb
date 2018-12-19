class TableAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins
    add_column :admins, :name, :string
    add_column :admins, :password, :string
  end
end
