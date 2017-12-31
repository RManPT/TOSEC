class Role < ApplicationRecord
    has_many :grole
    validates :name, presence: true,
                    length: { minimum: 1 }
end
