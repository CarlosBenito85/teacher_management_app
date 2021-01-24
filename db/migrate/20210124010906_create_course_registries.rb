class CreateCourseRegistries < ActiveRecord::Migration[6.0]
  def change
    create_table :course_registries do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
    add_index :course_registries, [:teacher_id, :course_id], unique: true
  end
end
