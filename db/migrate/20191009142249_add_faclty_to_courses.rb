class AddFacltyToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses,:faculty,:integer
  end
end
