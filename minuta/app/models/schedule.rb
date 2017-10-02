class Schedule < ApplicationRecord

  has_one :client_schedule

  validates   :time,
              presence: true

  validates   :date,
              presence: true
end
