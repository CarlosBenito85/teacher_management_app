class CreateTeacherVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_votes do |t|
      t.integer :voter_id
      t.integer :voted_id

      t.timestamps
    end
    add_index :teacher_votes, :voter_id
    add_index :teacher_votes, :voted_id
    add_index :teacher_votes, [:voter_id, :voted_id], unique: true
  end
end
