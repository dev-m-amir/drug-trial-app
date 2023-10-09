# frozen_string_literal: true

# == Schema Information
#
# Table name: volunteers
#
#  id                :bigint           not null, primary key
#  first_name        :string
#  insurance_carrier :string
#  last_name         :string
#  phone_number      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  medical_id        :string           not null
#
# Indexes
#
#  index_volunteers_on_medical_id    (medical_id) UNIQUE
#  index_volunteers_on_phone_number  (phone_number) UNIQUE
#
class Volunteer < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 3, maximum: 255 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 255 }
  validates :insurance_carrier, presence: true, length: { minimum: 3, maximum: 255 }
  validates :phone_number, presence: true, uniqueness: true, phone: true
  validates :medical_id, presence: true, uniqueness: true
end
