class Product < ActiveRecord::Base
		 belongs_to :category
		 belongs_to :sub_category
		 has_attached_file :photo, :styles => {  :thumb => "600x600#", :medium => "300x300#", :small => "160x160#"}
    has_attached_file :video_file
    validates_uniqueness_of :title
    validates_attachment_content_type :photo, :video_file, :content_type => %w(image/jpeg image/jpg  image/png video/mp4) 
    validates_presence_of :title, :description, :price, :photo, :video_file

end
