class Post < ActiveRecord::Base
    has_many :comments, :dependent => :destroy
    has_many :post_tag_relations, :dependent => :destroy
    has_many :tags, :through => :post_tag_relations
    has_attached_file :image, :styles => { :medium => "500x500>", :thumb => "100x100" }

end
