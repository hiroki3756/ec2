class ChangeDataDeliverToOrder < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :deliver, :string
  end
end
