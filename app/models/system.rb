class System < ApplicationRecord
    belongs_to :company
    belongs_to :systemsType
    validates :name, presence: true, length: { in: 3..255 }
    validates :abbreviation, presence: true, length: {  in: 1..10 }
    validates :company_id, presence: true
    validates :systemsType, presence: true
    validates :dateRelease, format: { with: /\d{4}\-(0?[1-9]|1[012])\-([12][0-9]|3[01]|0?[1-9])/,
    message: "only date" }
end
