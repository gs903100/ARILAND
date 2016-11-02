class Story < ActiveRecord::Base
	has_many :story_comments
end
