class AddFarmerToShare < ActiveRecord::Migration
  def change
    add_column :shares, :farmer_id, :int
  end
end
