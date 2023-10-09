# frozen_string_literal: true

module HospitalService
  def self.send_data(volunteer)
    sql = ActiveRecord::Base.sanitize_sql_array(
      [
        "insert into volunteers (first_name, last_name, phone_number, insurance_carrier, medical_id), values('%s', '%s', '%s', '%s', '%s')",
        volunteer.first_name,
        volunteer.last_name,
        volunteer.phone_number,
        volunteer.insurance_carrier,
        volunteer.medical_id
      ]
    )

    send_to_hospital(sql)
  end

  def self.send_to_hospital(sql)
    Rails.logger.debug(sql)

    File.open('output.sql', 'a+t') do |file|
      file.puts sql
    end
    true
  end
end
