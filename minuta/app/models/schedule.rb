class Schedule < ApplicationRecord

  belongs_to :client
  has_one :client_schedule

  validates   :time,
              presence: true

  validates   :date,
              presence: true
end
