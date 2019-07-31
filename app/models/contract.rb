class Contract < ApplicationRecord
  belongs_to :person
  belongs_to :service_receiver, class_name: 'Person'
  belongs_to :service_provider, class_name: 'Person'
  belongs_to :contact_person, class_name: 'Person', foreign_key: :person_id
  has_many :cms, dependent: :destroy
  accepts_nested_attributes_for :cms, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :service_receiver, :service_provider
  # accepts_nested_attributes_for :service_provider

  has_many :machines, through: :cms
  # validate :must_have_cms
end
