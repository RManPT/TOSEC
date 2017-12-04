class Datfile < ApplicationRecord
  belongs_to :collection_type, required: true
  belongs_to :user, required: true
  belongs_to :system, required: true
  belongs_to :datstatus, required: true
  has_and_belongs_to_many :releases
  
  validates :name, presence: true,length: { minimum: 5 }
  validates :readme, presence: true,length: { minimum: 5 }  
  validates :collection_type_id, presence: true
  validates :system_id, presence: true  
  validates :datstatus_id, presence: true  
  validates :user_id, presence: true  
end
