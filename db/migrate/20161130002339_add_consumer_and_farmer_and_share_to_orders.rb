class AddConsumerAndFarmerAndShareToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :consumer, foreign_key: true
    add_reference :orders, :farmer, foreign_key: true
    add_reference :orders, :share, foreign_key: true
  end
end
