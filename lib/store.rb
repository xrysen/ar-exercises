class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, other_than: 0 }
  validates :mens_apparel, :womens_apparel, inclusion: [true, false]
  validate :must_carry_mens_or_womens
  before_destroy :check_if_employees

  def must_carry_mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:must_carry_mens_or_womens, ":one of these needs to be true")
    end
  end

  private
    def check_if_employees
      if self.employees.count() > 0
        return false
      end
    end
end
