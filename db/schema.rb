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

ActiveRecord::Schema.define(version: 20140622225011) do

  create_table "picks", force: true do |t|
    t.integer  "round"
    t.integer  "pick_no"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "picks", ["team_id"], name: "index_picks_on_team_id"

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pick_id"
  end

  add_index "players", ["pick_id"], name: "index_players_on_pick_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "division"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
