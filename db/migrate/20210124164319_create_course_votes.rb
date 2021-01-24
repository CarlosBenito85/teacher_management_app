class CreateCourseVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :course_votes do |t|
      t.integer :teacher_id
      t.integer :course_id

      t.timestamps
    end
    add_index :course_votes, :teacher_id
    add_index :course_votes, :course_id
    add_index :course_votes, [:teacher_id, :course_id], unique: true
  end
end
