# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_30_173233) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mastery_levels", force: :cascade do |t|
    t.string "title"
    t.integer "level"
  end

  create_table "review_lists", force: :cascade do |t|
    t.integer "vocabulary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_lists_vocabularies", force: :cascade do |t|
    t.bigint "vocabulary_id"
    t.bigint "review_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_list_id"], name: "index_review_lists_vocabularies_on_review_list_id"
    t.index ["vocabulary_id"], name: "index_review_lists_vocabularies_on_vocabulary_id"
  end

  create_table "review_queues", force: :cascade do |t|
    t.integer "vocabulary_id"
    t.date "review_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_queues_vocabularies", force: :cascade do |t|
    t.bigint "review_queue_id"
    t.bigint "vocabulary_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["review_queue_id"], name: "index_review_queues_vocabularies_on_review_queue_id"
    t.index ["vocabulary_id"], name: "index_review_queues_vocabularies_on_vocabulary_id"
  end

  create_table "vocabularies", force: :cascade do |t|
    t.string "word", null: false
    t.string "reading", null: false
    t.integer "mastery_level", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
