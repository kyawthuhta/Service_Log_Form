class Svclog < ApplicationRecord
  belongs_to :organization
  has_many :svms, dependent: :destroy
  accepts_nested_attributes_for :svms, reject_if: :all_blank, allow_destroy: true

  has_many :mslogs, through: :svms
end
