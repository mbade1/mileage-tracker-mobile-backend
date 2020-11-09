class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.integer :user_id
      t.integer :current_mileage
      t.string :name
      t.decimal :new_mileage
      t.date :date_of_purchase

      t.timestamps
    end
  end
end
