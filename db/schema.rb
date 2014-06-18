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

ActiveRecord::Schema.define(version: 20140616181357) do

  create_table "benefits", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "co_researchers", force: true do |t|
    t.string   "fname"
    t.string   "midinit"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "hphone"
    t.string   "mphone"
    t.string   "email_addr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "researcher_id"
  end

  create_table "contexts", force: true do |t|
    t.string   "classification"
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_analysis_methods", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.text     "study_significance"
    t.text     "rationale"
    t.text     "citation"
    t.text     "problem_statement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "methodology_procedures", force: true do |t|
    t.date     "prj_start_date"
    t.date     "prj_end_date"
    t.date     "data_collect_start_date"
    t.date     "data_collect_end_date"
    t.integer  "no_of_comparison_grps"
    t.string   "rel_to_research_participants"
    t.string   "based_on_intervention"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "methodology_research_design_infos", force: true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualitative_designs", force: true do |t|
    t.text     "theoretical_frmwrk"
    t.text     "coding_scheme"
    t.text     "data_validation_procedure"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requested_data", force: true do |t|
    t.text     "data_requested"
    t.string   "data_src_location"
    t.date     "eta_of_requested_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_applications", force: true do |t|
    t.string   "title"
    t.string   "owner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "midinit"
    t.string   "lname"
  end

  create_table "research_benefit_and_risks", force: true do |t|
    t.text     "benefit"
    t.text     "risk"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_data", force: true do |t|
    t.text     "data_collected_by_researcher"
    t.text     "collection_instrument"
    t.date     "eta_of_data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_elements", force: true do |t|
    t.string   "name"
    t.integer  "number_involved"
    t.string   "group_name"
    t.integer  "grp_no_per_class"
    t.string   "classification"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_samplings", force: true do |t|
    t.text     "how_participants_selected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "researchers", force: true do |t|
    t.string   "fname"
    t.string   "midinit"
    t.string   "lname"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "hphone"
    t.string   "mphone"
    t.string   "email_addr"
    t.string   "job_title"
    t.string   "employer"
    t.string   "emp_addr"
    t.string   "emp_city"
    t.string   "emp_state"
    t.string   "emp_zip"
    t.string   "prof_institution"
    t.string   "mjr_prof"
    t.string   "prof_addr"
    t.string   "prof_phone"
    t.string   "prof_email_addr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "safe_guards", force: true do |t|
    t.text     "description"
    t.text     "step"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "lname"
    t.string   "midinit"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "email_addr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "hphone"
  end

end
