class CreateSquirrels < ActiveRecord::Migration
  def change
    create_table :squirrels do |t|
      t.string :name
      t.string :breed
      t.integer :age

      t.timestamps null: false
    end
  end
end
