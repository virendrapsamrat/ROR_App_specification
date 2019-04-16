class Signup < ApplicationRecord
	 validates :username, presence: true,
                    length: { minimum: 5 }
       validates :password, presence: true,
                    length: { minimum: 8 }             
end
