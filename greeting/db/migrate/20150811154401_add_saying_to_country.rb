class AddSayingToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :saying, :string
  end
end
