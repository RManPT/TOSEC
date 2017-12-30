class Route < ApplicationRecord
    validates :name, presence: true,
                    length: { minimum: 1 }
    validates :path, presence: true,
                    length: { minimum: 1 }
    validates :priority, presence: true,
                    length: { minimum: 1 }
end
