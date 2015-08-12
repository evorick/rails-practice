class AddOwnerToSquirrels < ActiveRecord::Migration
  def change
    add_reference :squirrels, :owner, index: true, foreign_key: true
  end
end
