# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_24_164319) do

  create_table "course_registries", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_registries_on_course_id"
    t.index ["teacher_id", "course_id"], name: "index_course_registries_on_teacher_id_and_course_id", unique: true
    t.index ["teacher_id"], name: "index_course_registries_on_teacher_id"
  end

  create_table "course_votes", force: :cascade do |t|
    t.integer "teacher_id"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_votes_on_course_id"
    t.index ["teacher_id", "course_id"], name: "index_course_votes_on_teacher_id_and_course_id", unique: true
    t.index ["teacher_id"], name: "index_course_votes_on_teacher_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_courses_on_title", unique: true
  end

  create_table "teacher_votes", force: :cascade do |t|
    t.integer "voter_teacher_id"
    t.integer "voted_teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["voted_teacher_id"], name: "index_teacher_votes_on_voted_teacher_id"
    t.index ["voter_teacher_id", "voted_teacher_id"], name: "index_teacher_votes_on_voter_teacher_id_and_voted_teacher_id", unique: true
    t.index ["voter_teacher_id"], name: "index_teacher_votes_on_voter_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "course_registries", "courses"
  add_foreign_key "course_registries", "teachers"
end
