class Company < ApplicationRecord
	belongs_to :state
	belongs_to :country
	belongs_to :city
	has_many :your_comments
end
