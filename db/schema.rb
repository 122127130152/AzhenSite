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

ActiveRecord::Schema.define(version: 20180620041000) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "文章表" do |t|
    t.string "title", default: "", null: false, comment: "标题"
    t.datetime "publish_time", comment: "发布时间"
    t.text "content", comment: "内容"
    t.integer "status", default: 1, comment: "发布状态"
    t.boolean "state", default: true, comment: "状态"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publish_time"], name: "index_articles_on_publish_time"
    t.index ["state"], name: "index_articles_on_state"
    t.index ["status"], name: "index_articles_on_status"
  end

end
