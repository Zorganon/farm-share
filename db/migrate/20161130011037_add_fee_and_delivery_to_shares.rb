class AddFeeAndDeliveryToShares < ActiveRecord::Migration
  def change
    add_column :shares, :fee, :decimal
    add_column :shares, :delivery, :boolean
    change_column :shares, :price, :decimal
  end
end
