class CreateCakes < ActiveRecord::Migration[5.2]
  def change
    create_table :cakes do |t|
      t.string :size, null: false
      t.string :message, null: false, default: "Happy Birthday!"
      t.datetime :pickup, null: false
      t.string :notes

      t.timestamps
    end
  end
end
