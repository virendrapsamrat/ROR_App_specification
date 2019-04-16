class Company < ApplicationRecord
	belongs_to :state
	belongs_to :country
	belongs_to :city
end
