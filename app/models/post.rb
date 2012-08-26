class Post < ActiveRecord::Base
  attr_accessible :title, :photo
  has_attached_file :photo, :styles => { :medium => "x300" }
end