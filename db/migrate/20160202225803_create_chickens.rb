class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.references :coop
      t.integer :sex, default: 0
      t.string :name, default: ""

      t.timestamps null: false
    end
  end
end
