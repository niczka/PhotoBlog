class CreatePostTagRelations < ActiveRecord::Migration
  def self.up
    create_table :post_tag_relations do |t|
      t.references :tag
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :post_tag_relations
  end
end
