class Tag < ActiveRecord::Base
    has_many :post_tag_relations
    has_many :posts, :through => :post_tag_relations
end
