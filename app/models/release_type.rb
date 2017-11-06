class ReleaseType < ApplicationRecord
    has_many :releases
    validates :name, presence: true,length: { minimum: 5 }
    validates :desc, presence: true,length: { minimum: 5 }    
end
