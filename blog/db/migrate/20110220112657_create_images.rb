class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :file_name
      t.string :content_type
      t.integer :file_size
      t.string :title
      t.string :description
      t.references :post

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
