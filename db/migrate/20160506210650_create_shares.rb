class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :animal
      t.string :size
      t.string :price

      t.timestamps null: false
    end
  end
end
