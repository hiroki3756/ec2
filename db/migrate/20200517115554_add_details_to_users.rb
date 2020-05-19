class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :family_name_kana, :string
    add_column :users, :middle_name_kana, :string
    add_column :users, :address, :string
    add_column :users, :zipcode, :string
    add_column :users, :phone_number, :string
    add_column :users, :is_withdraw, :boolean,default:false
  end
end
