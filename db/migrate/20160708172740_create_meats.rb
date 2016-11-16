class CreateMeats < ActiveRecord::Migration
  def change
    create_table :meats do |t|
      t.string :animal

      t.timestamps null: false
    end
  end
end
