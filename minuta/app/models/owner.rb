class Owner < User
  has_many :employees
  accepts_nested_attributes_for :employees

end
