class Citylike < ApplicationRecord
	belongs_to :citycomment
	belongs_to :user
end
