class Mslog < ApplicationRecord
  belongs_to :machine
  has_one :svm, inverse_of: :mslog, dependent: :destroy
  # accepts_nested_attributes_for :svclog, reject_if: :all_blank, allow_destroy: true
end
