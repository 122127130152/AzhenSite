class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles, comment: "文章表" do |t|
      t.string :title, null: false, default: '', comment: "标题"
      t.datetime :publish_time, comment: "发布时间"
      t.text :content, comment: "内容"
      t.integer :status, default: true, comment: "发布状态"
      t.boolean :state, default: true, comment: "状态"

      t.timestamps
    end

    add_index :articles, :status
    add_index :articles, :state
    add_index :articles, :publish_time
    
  end
end
