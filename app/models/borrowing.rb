class Borrowing < ActiveRecord::Base
 belongs_to :customer
 belongs_to :copy
 validates :date_of_issue, presence: true
 validates :date_of_return, presence: true
 validates :copy_id, presence: true
 validates :customer_id, presence: true
end
