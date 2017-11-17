class System < ApplicationRecord
    belongs_to :company
    validates :name, presence: true,
    length: { minimum: 3 }
end
