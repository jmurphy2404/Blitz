class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :make
      t.string :model
      t.string :color
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
