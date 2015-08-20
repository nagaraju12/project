class Picture < ActiveRecord::Base
	belongs_to :products

  has_attached_file :photo,
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/photos/:id/:filename"

  do_not_validate_attachment_file_type :photo
end
