class RemoveOwnerFromSquirrels < ActiveRecord::Migration
  def change
    remove_column :squirrels, :owner, :string
  end
end
