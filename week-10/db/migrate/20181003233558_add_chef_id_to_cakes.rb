class AddChefIdToCakes < ActiveRecord::Migration[5.2]
  def change
    add_reference :cakes, :chef, index: true
  end
end
