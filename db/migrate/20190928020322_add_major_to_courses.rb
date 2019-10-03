class AddMajorToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses,:major,:string
    add_index :courses,[:course_name,:professor],unique: true
  end
end
