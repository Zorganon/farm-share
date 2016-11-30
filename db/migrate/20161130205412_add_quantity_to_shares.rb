class AddQuantityToShares < ActiveRecord::Migration
  def change
    add_column :shares, :quantity, :integer
  end
end
