class Photo < ActiveRecord::Base
	mount_uploader :picture, ImageUploader
end
