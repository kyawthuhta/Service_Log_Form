class Person < ApplicationRecord
	has_many :contracts, dependent: :destroy
	# accepts_nested_attributes_for :contracts, reject_if: :all_blank, allow_destroy: true
end