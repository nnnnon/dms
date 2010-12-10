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

ActiveRecord::Schema.define(:version => 20101104052211) do

  create_table "articles", :force => true do |t|
    t.string    "title"
    t.text      "introduction",              :limit => 2147483647
    t.string    "tag"
    t.string    "upload_person"
    t.date      "post_date",                 :limit => 10
    t.string    "author"
    t.timestamp "created_at",                :limit => 26
    t.timestamp "updated_at",                :limit => 26
    t.string    "article_file_file_name"
    t.string    "article_file_content_type"
    t.integer   "article_file_file_size",    :limit => 10
    t.timestamp "article_file_updated_at",   :limit => 26
  end

  create_table "comments", :force => true do |t|
    t.string    "commenter"
    t.text      "body",       :limit => 2147483647
    t.integer   "article_id", :limit => 10
    t.timestamp "created_at", :limit => 26
    t.timestamp "updated_at", :limit => 26
  end

  create_table "users", :force => true do |t|
    t.string    "email"
    t.string    "crypted_password"
    t.string    "password_salt"
    t.string    "persistence_token"
    t.integer   "login_count",        :limit => 10
    t.integer   "failed_login_count", :limit => 10
    t.timestamp "last_request_at",    :limit => 26
    t.timestamp "last_login_at",      :limit => 26
    t.timestamp "current_login_at",   :limit => 26
    t.string    "current_login_ip"
    t.string    "last_login_ip"
    t.timestamp "created_at",         :limit => 26
    t.timestamp "updated_at",         :limit => 26
  end

end
