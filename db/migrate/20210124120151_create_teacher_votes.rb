class CreateTeacherVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_votes do |t|
      t.integer :voter_teacher_id
      t.integer :voted_teacher_id

      t.timestamps
    end
    add_index :teacher_votes, :voter_teacher_id
    add_index :teacher_votes, :voted_teacher_id
    add_index :teacher_votes, [:voter_teacher_id, :voted_teacher_id], unique: true
  end
end
