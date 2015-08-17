class RemoveBreedFromSquirrels < ActiveRecord::Migration
  def change
    remove_column :squirrels, :breed, :string
  end
end
