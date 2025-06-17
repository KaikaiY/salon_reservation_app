class AddAdminCodeToAdmins < ActiveRecord::Migration[7.1]
  def change
    add_column :admins, :admin_code, :string
    add_index :admins, :admin_code, unique: true
  end
end
