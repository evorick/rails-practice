class AddOwnerToSquirrel < ActiveRecord::Migration
  def change
    add_column :squirrels, :owner, :string
  end
end
