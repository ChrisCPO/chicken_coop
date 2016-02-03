class CreateFoxes < ActiveRecord::Migration
  def change
    create_table :foxes do |t|
      t.references :coop
      t.boolean :hunger, default: false
      t.string :name, default: ""
      t.string :color, default: ""


      t.timestamps null: false
    end
  end
end
