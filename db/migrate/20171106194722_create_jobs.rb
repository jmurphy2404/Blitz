class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.float :origin_lat
      t.float :origin_lng
      t.float :dest_lat
      t.float :dest_lng
      t.string :origin
      t.string :destination
      t.datetime :date
      t.datetime :time
      t.integer :bike_id
      t.integer :valet_id
      t.integer :status

      t.timestamps
    end
  end
end
