class System < ApplicationRecord
    has_many :types
    validates :name, presence: true, length: { minimum: 3 }
end
