class AddBreedToSquirrels < ActiveRecord::Migration
  def change
    add_reference :squirrels, :breed, index: true, foreign_key: true
  end
end
