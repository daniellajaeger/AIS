class Post < ActiveRecord::Base
  attr_accessible :title, :photo, :url
  has_attached_file :photo, :styles => { :medium => "x300" },
    :storage => :s3,
        :s3_credentials => {
          :bucket            => ENV['adventuresinshipping'],
          :access_key_id     => ENV['AKIAIY4CKFUEEX555J6Q'],
          :secret_access_key => ENV['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']
    }
end