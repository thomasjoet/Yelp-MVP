class RemoveStarsFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :stars, :integer
  end
end
