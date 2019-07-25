class Contract < ApplicationRecord
  belongs_to :person
  has_many :cms, dependent: :destroy
  accepts_nested_attributes_for :cms, reject_if: :all_blank, allow_destroy: true

  has_many :machines, through: :cms
end
