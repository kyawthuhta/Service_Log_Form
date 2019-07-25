class Machine < ApplicationRecord
	has_many :cms, inverse_of: :machine, dependent: :destroy
  	#accepts_nested_attributes_for :cms, reject_if: :all_blank, allow_destroy: true
end
