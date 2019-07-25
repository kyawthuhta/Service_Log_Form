class Cm < ApplicationRecord
  belongs_to :contract#, optional: true
  belongs_to :machine#, optional: true

  accepts_nested_attributes_for :machine, reject_if: :all_blank, allow_destroy: true
end
