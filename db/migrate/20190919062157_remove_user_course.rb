class RemoveUserCourse < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_courses
  end
end
