class AddStarsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :stars, :integer
  end
end
