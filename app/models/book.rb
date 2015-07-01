class Book < ActiveRecord::Base
 has_many :copies, dependent: :destroy
 belongs_to :genre
 belongs_to :publisher
 validates :author, presence: true
 validates :publisher, presence: true
 validates :title, presence: true
 validates :genre, presence: true
    
end
