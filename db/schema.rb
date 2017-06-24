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

ActiveRecord::Schema.define(version: 20170620144058) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "trades", force: :cascade do |t|
    t.string   "avatar",      limit: 255
    t.text     "description", limit: 65535
    t.string   "user_id",     limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                      limit: 255,   default: "",    null: false
    t.string   "encrypted_password",                         limit: 255,   default: "",    null: false
    t.string   "reset_password_token",                       limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                              limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",                         limit: 255
    t.string   "last_sign_in_ip",                            limit: 255
    t.string   "first_name",                                 limit: 255
    t.string   "last_name",                                  limit: 255
    t.string   "phone_number",                               limit: 255
    t.string   "avatar",                                     limit: 255
    t.string   "address_line1",                              limit: 255
    t.string   "address_line2",                              limit: 255
    t.string   "city",                                       limit: 255
    t.string   "state",                                      limit: 255
    t.string   "country",                                    limit: 255
    t.string   "pincode",                                    limit: 255
    t.boolean  "trade_access",                                             default: false, null: false
    t.text     "about_yourself",                             limit: 65535
    t.text     "weekness_and_reason_to_hire",                limit: 65535
    t.text     "forex_meaning_foreign_exchange_move",        limit: 65535
    t.text     "central_banks_in_foreign_exchange_rates",    limit: 65535
    t.text     "what_you_do_if_endup_day_by_5_percent_loss", limit: 65535
    t.text     "money_and_risk_management",                  limit: 65535
    t.text     "phycology_in_forex",                         limit: 65535
    t.text     "explanation_of_technical_analysis",          limit: 65535
    t.text     "trading_forex_maning",                       limit: 65535
    t.text     "risky_of_forex_trading",                     limit: 65535
    t.text     "how_i_manage_risk",                          limit: 65535
    t.text     "kind_of_forex_trading_i_use",                limit: 65535
    t.text     "ict_involved_in_us_doller",                  limit: 65535
    t.text     "central_location_of_forex_market",           limit: 65535
    t.text     "explain_money_management",                   limit: 65535
    t.text     "mean_by_fundamental_of_forex",               limit: 65535
    t.text     "actions",                                    limit: 65535
    t.text     "how_to_propose",                             limit: 65535
    t.text     "what_is_economics",                          limit: 65535
    t.text     "relatinship_with_me",                        limit: 65535
    t.text     "educational_background",                     limit: 65535
    t.text     "introduce_financial_markets",                limit: 65535
    t.text     "current_trading",                            limit: 65535
    t.text     "do_you_speak_english",                       limit: 65535
    t.text     "varified_trading_history",                   limit: 65535
    t.text     "your_drawdown",                              limit: 65535
    t.text     "largest_amount_traded",                      limit: 65535
    t.text     "financial_market_learning",                  limit: 65535
    t.text     "trade_manager",                              limit: 65535
    t.text     "trending_groups",                            limit: 65535
    t.text     "signals",                                    limit: 65535
    t.text     "eas",                                        limit: 65535
    t.text     "type_of_trade",                              limit: 65535
    t.text     "strategy",                                   limit: 65535
    t.text     "session_trade",                              limit: 65535
    t.text     "example_time_to_work_in_team",               limit: 65535
    t.text     "yourself_in_5_years",                        limit: 65535
    t.text     "drink_smoke",                                limit: 65535
    t.text     "prersonal_rituals",                          limit: 65535
    t.text     "remote_or_office",                           limit: 65535
    t.datetime "created_at",                                                               null: false
    t.datetime "updated_at",                                                               null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
