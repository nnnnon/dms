class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.text :introduction
      t.string :tag
      t.string :upload_person
      t.date :post_date
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
