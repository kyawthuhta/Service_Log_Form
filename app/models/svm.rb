class Svm < ApplicationRecord
  belongs_to :svclog
  belongs_to :mslog
  accepts_nested_attributes_for :mslog, reject_if: :all_blank, allow_destroy: true
end
