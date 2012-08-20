class Post < ActiveRecord::Base
  attr_accessible :title, :photo
  has_attached_file :photo, :styles => { :medium => "500x500>", :thumb => "100x100>" }
end
