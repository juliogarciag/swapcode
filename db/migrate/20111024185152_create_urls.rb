class CreateUrls < ActiveRecord::Migration
  def self.up
    create_table :urls do |t|
      t.string :url
      t.text :content
    end
    add_index :urls, :url
  end

  def self.down
    drop_table :urls
  end
end