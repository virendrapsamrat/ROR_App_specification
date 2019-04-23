class Like < ActiveRecord::Base
    belongs_to :citycomment
    belongs_to :your_comment
	belongs_to :user
end