class AddIndexToCoursesTitle < ActiveRecord::Migration[6.0]
  def change
    add_index :courses, :title, unique: true
  end
end
