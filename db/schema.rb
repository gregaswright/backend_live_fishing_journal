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

ActiveRecord::Schema.define(version: 2020_12_18_153418) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id"
    t.integer "fish_journal_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fish_journals", force: :cascade do |t|
    t.integer "date"
    t.string "fish_type"
    t.float "fish_length"
    t.float "fish_weight"
    t.string "moon_phase"
    t.string "tide"
    t.string "rod_setup"
    t.string "note"
    t.string "image"
    t.integer "pin_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fish_saves", force: :cascade do |t|
    t.string "species_name"
    t.string "taste"
    t.string "texture"
    t.string "biology"
    t.string "habitat"
    t.string "population_status"
    t.string "phyiscal_description"
    t.string "fisheries_region"
    t.string "location"
    t.string "availability"
    t.string "image"
    t.string "personal_note"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pins", force: :cascade do |t|
    t.string "title"
    t.float "latitude"
    t.float "longitude"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sea_creatures", force: :cascade do |t|
    t.string "species_name"
    t.string "taste"
    t.string "texture"
    t.string "biology"
    t.string "habitat"
    t.string "population_status"
    t.string "phyiscal_description"
    t.string "fisheries_region"
    t.string "location"
    t.string "availability"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "profile_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
