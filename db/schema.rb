# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151220231549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string  "title"
    t.string  "prompt_link"
    t.integer "cohort_id"
    t.integer "instructor_id"
    t.date    "assigned_on"
  end

  create_table "cohorts", force: :cascade do |t|
    t.string  "cohort_name"
    t.integer "producer_id"
    t.date    "start_on"
    t.date    "end_on"
  end

  create_table "cohorts_instructors", id: false, force: :cascade do |t|
    t.integer "cohort_id",     null: false
    t.integer "instructor_id", null: false
  end

  add_index "cohorts_instructors", ["cohort_id", "instructor_id"], name: "index_cohorts_instructors_on_cohort_id_and_instructor_id", using: :btree
  add_index "cohorts_instructors", ["instructor_id", "cohort_id"], name: "index_cohorts_instructors_on_instructor_id_and_cohort_id", using: :btree

  create_table "gists", force: :cascade do |t|
    t.string  "title"
    t.string  "content"
    t.string  "gist_link"
    t.integer "instructor_id"
    t.integer "cohort_id"
    t.date    "date"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "students", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password_digest"
    t.integer "cohort_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "student_id"
    t.integer "assignment_id"
    t.date    "submitted_on"
    t.string  "comments"
    t.string  "title"
    t.string  "submission_link"
    t.string  "grade_status",    default: "Pending"
  end

end
