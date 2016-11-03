class Poem < ActiveRecord::Base
	has_many :poem_comments, dependent: :destroy
	mount_uploader :image, ImageUploader
end