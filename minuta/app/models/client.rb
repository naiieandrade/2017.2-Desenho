class Client < ApplicationRecord
  has_many :schedules, through: :client_schedules
  has_many :client_schedules
  
end
