class Person < ApplicationRecord
	has_many :contracts, dependent: :destroy
end