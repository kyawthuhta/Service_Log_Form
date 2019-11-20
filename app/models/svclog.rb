class Svclog < ApplicationRecord
  belongs_to :organization
  belongs_to :service_receiver, class_name: 'Person'
  belongs_to :service_provider, class_name: 'Person'
  belongs_to :contact_person, class_name: 'Person', foreign_key: :person_id
  has_many :svms, dependent: :destroy
  accepts_nested_attributes_for :svms, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :service_receiver, :service_provider

  has_many :mslogs, through: :svms
end
