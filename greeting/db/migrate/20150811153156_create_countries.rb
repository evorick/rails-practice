class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :time_of_day
      t.integer :age

      t.timestamps null: false
    end
  end
end
