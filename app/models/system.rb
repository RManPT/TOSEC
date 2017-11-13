class System < ApplicationRecord
    has_many :systems_types 
    validates :name, presence: true, length: { minimum: 3 }
end
