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

ActiveRecord::Schema.define(version: 20151112143711) do

  create_table "academic_qualifications", force: :cascade do |t|
    t.integer  "resume_id",          limit: 4
    t.string   "level_of_education", limit: 255
    t.string   "degree",             limit: 255
    t.string   "major",              limit: 255
    t.string   "institute",          limit: 255
    t.string   "result",             limit: 255
    t.string   "year_of_passing",    limit: 255
    t.string   "duration",           limit: 255
    t.string   "achievement",        limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "additional_requirements", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "job_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.string   "admin_type", limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employment_histories", force: :cascade do |t|
    t.integer  "resume_id",        limit: 4
    t.string   "company",          limit: 255
    t.string   "company_business", limit: 255
    t.string   "company_location", limit: 255
    t.string   "department",       limit: 255
    t.string   "position",         limit: 255
    t.string   "responsibilities", limit: 255
    t.date     "from"
    t.date     "to"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "job_descriptions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "job_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "subcategory_id",         limit: 4
    t.string   "post",                   limit: 255
    t.string   "company",                limit: 255
    t.string   "no_of_vacancies",        limit: 255
    t.string   "job_nature",             limit: 255
    t.text     "education_requirements", limit: 65535
    t.string   "job_location",           limit: 255
    t.string   "salary_range",           limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "language_specializations", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "resume_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "references", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "resume_id",    limit: 4
    t.string   "organization", limit: 255
    t.string   "address",      limit: 255
    t.string   "phone",        limit: 255
    t.string   "mobile",       limit: 255
    t.string   "email",        limit: 255
    t.string   "relation",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.integer  "user_id",           limit: 4
    t.string   "name",              limit: 255
    t.string   "fathers_name",      limit: 255
    t.string   "mothers_name",      limit: 255
    t.string   "gender",            limit: 255
    t.string   "date_of_birth",     limit: 255
    t.string   "marital_status",    limit: 255
    t.string   "nationality",       limit: 255
    t.string   "national_id_card",  limit: 255
    t.string   "religion",          limit: 255
    t.string   "present_address",   limit: 255
    t.string   "permanent_address", limit: 255
    t.string   "current_location",  limit: 255
    t.string   "home_phone",        limit: 255
    t.string   "mobile",            limit: 255
    t.string   "email",             limit: 255
    t.string   "alternate",         limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "specializations", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "resume_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.string   "phone",                  limit: 255
    t.string   "gender",                 limit: 255
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
