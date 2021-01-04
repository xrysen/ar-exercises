class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, :inclusion => 40..200
  before_create :generate_password

  private
    def generate_password
      i = 0;
      password = ''
      alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
      chars = alphabet.split('')
      while i < 8
        password += chars[rand(0..52)]
        i = i + 1
      end
      self.password = password
    end
end

