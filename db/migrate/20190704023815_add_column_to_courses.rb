class AddColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :wday,:integer
    add_column :courses, :sem, :integer
    add_column :courses, :professor, :string
  end
end
