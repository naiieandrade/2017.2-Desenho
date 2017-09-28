class Schedule < ApplicationRecord
  validates   :time,
              presence: true

  validates   :date,
              presence: true
end
