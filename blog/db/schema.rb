
ActiveRecord::Schema.define(version: 2019_03_19_144810) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

end
