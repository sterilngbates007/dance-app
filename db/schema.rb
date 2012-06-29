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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120629171059) do

  create_table "contestants", :force => true do |t|
    t.string   "name"
    t.integer  "contest_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contestants", ["contest_id"], :name => "index_contestants_on_contest_id"

  create_table "contests", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "judges", :force => true do |t|
    t.string   "name"
    t.integer  "contest_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "judges", ["contest_id"], :name => "index_judges_on_contest_id"

  create_table "rounds", :force => true do |t|
    t.string   "name"
    t.integer  "contest_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rounds", ["contest_id"], :name => "index_rounds_on_contest_id"

  create_table "scores", :force => true do |t|
    t.integer  "judge_id"
    t.integer  "contest_id"
    t.integer  "contestant_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "scores", ["contest_id"], :name => "index_scores_on_contest_id"
  add_index "scores", ["contestant_id"], :name => "index_scores_on_contestant_id"
  add_index "scores", ["judge_id"], :name => "index_scores_on_judge_id"

end
