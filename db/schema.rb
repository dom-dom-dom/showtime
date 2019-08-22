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

ActiveRecord::Schema.define(version: 2019_08_22_174632) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.string "name"
    t.string "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.bigint "auditorium_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auditorium_id"], name: "index_movies_on_auditorium_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "card"
    t.date "exp"
    t.bigint "screening_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "movie_id"
    t.index ["movie_id"], name: "index_orders_on_movie_id"
    t.index ["screening_id"], name: "index_orders_on_screening_id"
  end

  create_table "screenings", force: :cascade do |t|
    t.bigint "movie_id"
    t.integer "seats"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_screenings_on_movie_id"
  end

  add_foreign_key "movies", "auditoria"
  add_foreign_key "orders", "movies"
  add_foreign_key "orders", "screenings"
  add_foreign_key "screenings", "movies"
end
