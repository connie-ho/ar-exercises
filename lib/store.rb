class Store < ActiveRecord::Base
  has_many :employees
  
  validates :name, length: { minimum: 3}
  validates :annual_revenue, inclusion: { in: 0..Float::INFINITY }
end
