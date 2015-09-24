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

ActiveRecord::Schema.define(version: 20150823114237) do

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.integer  "tournament_id"
    t.integer  "team_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "games", ["team_id"], name: "index_games_on_team_id"
  add_index "games", ["tournament_id"], name: "index_games_on_tournament_id"

  create_table "gamestats", force: :cascade do |t|
    t.string   "name"
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "sixm_g"
    t.integer  "sixm_n"
    t.integer  "wing_g"
    t.integer  "wing_n"
    t.integer  "ninem_g"
    t.integer  "ninem_n"
    t.integer  "sevenm_g"
    t.integer  "sevenm_n"
    t.integer  "FB_n"
    t.integer  "BT_g"
    t.integer  "BT_n"
    t.integer  "AS_n"
    t.integer  "TF_n"
    t.integer  "ST_n"
    t.integer  "BS_n"
    t.integer  "YC_n"
    t.integer  "twoMin_n"
    t.integer  "RC_n"
    t.integer  "DR_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "FG_g"
    t.integer  "FB_g"
  end

  add_index "gamestats", ["game_id"], name: "index_gamestats_on_game_id"
  add_index "gamestats", ["player_id"], name: "index_gamestats_on_player_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "practicestats", force: :cascade do |t|
    t.integer  "practice_id"
    t.integer  "player_id"
    t.integer  "goal"
    t.integer  "nogoal"
    t.integer  "passmiss"
    t.integer  "catchmiss"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "practicestats", ["player_id"], name: "index_practicestats_on_player_id"
  add_index "practicestats", ["practice_id"], name: "index_practicestats_on_practice_id"

  create_table "rounds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
