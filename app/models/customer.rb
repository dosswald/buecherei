class Customer < ActiveRecord::Base
 has_many :borrowings
 validates :first_name, presence: true
 validates :second_name, presence: true
 validates :birth_date, presence: true
end
