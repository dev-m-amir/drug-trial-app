# frozen_string_literal: true

class CreateVolunteers < ActiveRecord::Migration[7.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :insurance_carrier
      t.string :medical_id, null: false

      t.timestamps

      t.index %i[medical_id], unique: true
      t.index %i[phone_number], unique: true
    end
  end
end
