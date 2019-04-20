class YourComment < ApplicationRecord
  belongs_to :company
  has_many :likes, dependent: :destroy
end
