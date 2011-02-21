class Image < ActiveRecord::Base
  belongs_to :post
  has_attached_file :file, :path => ":rails_root/public/system/:attachment/:id/:style/:filename", :styles => { :medium => "500x500>", :thumb => "100x100>" }
  has_many :tags, :through => :post
end
