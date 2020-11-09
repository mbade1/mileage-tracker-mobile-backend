class CreateRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :runs do |t|
      t.integer :shoe_id
      t.date :date_of_run
      t.decimal :distance_of_run
      t.string :image_of_run

      t.timestamps
    end
  end
end
