class Datfile < ApplicationRecord
  belongs_to :collection_type
  belongs_to :user
  belongs_to :system
  has_many :datstatuses
  has_and_belongs_to_many :releases
  validates :name, presence: true,length: { minimum: 5 }
  validates :readme, presence: true,length: { minimum: 5 }    
end
