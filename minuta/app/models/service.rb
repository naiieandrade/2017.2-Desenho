class Service < ApplicationRecord
  validates   :description,
              presence: true

  validates   :price,
              presence: true,
              :numericality =>{ :greater_than => 0 }
end
