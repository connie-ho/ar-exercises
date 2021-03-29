class Employee < ActiveRecord::Base
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: {in: 40..200}
  validate :womens_mens_apparel

  belongs_to :store 

  def womens_mens_apparel
    if !store.womens_apparel? && !store.mens_apparel 
      errors.add(:womens_apparel, "must sell womens or mens apparel")
      errors.add(:mens_apparel, "must sell womens or mens apparel")
    end
  end
end
