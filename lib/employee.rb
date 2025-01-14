class Employee < ActiveRecord::Base
  belongs_to :store 

  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: {in: 40..200}
  validate :womens_mens_apparel

  before_save :generate_password

  def womens_mens_apparel
    if !store.womens_apparel? && !store.mens_apparel 
      errors.add(:womens_apparel, "must sell womens or mens apparel")
      errors.add(:mens_apparel, "must sell womens or mens apparel")
    end
  end

  private 

  def generate_password
    self.password = (0...8).map { (65 + rand(26)).chr }.join
  end
end
