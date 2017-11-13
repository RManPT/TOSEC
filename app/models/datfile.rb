class Datfile < ApplicationRecord
  belongs_to :collection_type
  validates :name, presence: true,length: { minimum: 5 }
  validates :readme, presence: true,length: { minimum: 5 }    
end
