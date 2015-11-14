class AddBasicCustomerInfo < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :average_distance
      t.integer :price
    end
  end
end
