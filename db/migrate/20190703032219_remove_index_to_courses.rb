class RemoveIndexToCourses < ActiveRecord::Migration[5.2]
  def change
    remove_index :courses,:course_name
  end
end
