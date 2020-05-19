class RenameCustomerIdColumnToShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :shipping_addresses, :customer_id, :user_id
  end
end
