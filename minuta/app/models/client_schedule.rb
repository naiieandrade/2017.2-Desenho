class ClientSchedule < ApplicationRecord
  belongs_to :client
  belongs_to :schedule

  accepts_nested_attributes_for :schedule

end
