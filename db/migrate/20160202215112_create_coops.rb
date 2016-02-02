class CreateCoops < ActiveRecord::Migration
  def change
    create_table :coops do |t|
      t.string :name, null: false, default: ""

      t.timestamps null: false
    end
  end
end
