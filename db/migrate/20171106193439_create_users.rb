class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :address
      t.string :phone_num
      t.integer :user_type, default: 0

      t.timestamps
    end
  end
end
