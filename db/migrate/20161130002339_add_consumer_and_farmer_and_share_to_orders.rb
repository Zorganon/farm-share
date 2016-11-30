class AddConsumerAndFarmerAndShareToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :consumer_id, foreign_key: true
    add_reference :orders, :farmer_id, foreign_key: true
    add_reference :orders, :share_id, foreign_key: true
  end
end
