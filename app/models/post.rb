class Post < ActiveRecord::Base
  attr_accessible :title, :photo, :url
  has_attached_file :photo, :styles => { :medium => "x300" },
    :storage => :s3,
    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
    :path => "/:style/:filename"
end