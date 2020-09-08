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

ActiveRecord::Schema.define(version: 2020_09_08_130119) do

  create_table "goals", force: :cascade do |t|
    t.string "length", null: false
    t.integer "number"
    t.string "description", null: false
    t.date "date"
    t.integer "patient_id", null: false
    t.integer "progress_note_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_goals_on_patient_id"
    t.index ["progress_note_id"], name: "index_goals_on_progress_note_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "progress_notes", force: :cascade do |t|
    t.string "notes"
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "session_date", null: false
    t.index ["patient_id"], name: "index_progress_notes_on_patient_id"
  end

  create_table "scores", force: :cascade do |t|
    t.string "assessment", null: false
    t.decimal "score", null: false
    t.date "date", null: false
    t.integer "patient_id", null: false
    t.integer "progress_note_id", null: false
    t.index ["patient_id"], name: "index_scores_on_patient_id"
    t.index ["progress_note_id"], name: "index_scores_on_progress_note_id"
  end

  create_table "word_errors", force: :cascade do |t|
    t.string "word", null: false
    t.date "date", null: false
    t.integer "patient_id", null: false
    t.integer "progress_note_id", null: false
    t.index ["patient_id"], name: "index_word_errors_on_patient_id"
    t.index ["progress_note_id"], name: "index_word_errors_on_progress_note_id"
  end

  add_foreign_key "goals", "patients"
  add_foreign_key "goals", "progress_notes"
  add_foreign_key "progress_notes", "patients"
  add_foreign_key "scores", "patients"
  add_foreign_key "scores", "progress_notes"
  add_foreign_key "word_errors", "patients"
  add_foreign_key "word_errors", "progress_notes"
end
