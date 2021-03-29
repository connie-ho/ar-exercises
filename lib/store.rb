class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3}
  validates :annual_revenue, inclusion: { in: 0..Float::INFINITY }

  before_destroy :check_num_employees

  private 

  def check_num_employees
    if self.employees.count > 0
      return false
    end
  end

end
