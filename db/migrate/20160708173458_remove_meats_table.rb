class RemoveMeatsTable < ActiveRecord::Migration
  def up
    drop_table(:meats)
  end
  
  def down
    create_table :meats do |t|
      t.string :animal

      t.timestamps null: false
    end
  end
end
