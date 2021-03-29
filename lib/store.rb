class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, inclusion: { in: 0..Float::INFINITY }
  has_many :employees
end
