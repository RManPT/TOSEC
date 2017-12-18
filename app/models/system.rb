class System < ApplicationRecord
    has_attached_file :image, styles: { medium:"300x300", thumb: "150x150#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    belongs_to :company
    belongs_to :systemsType
    has_many :datfiles
    validates :name, presence: true, length: { in: 3..255 }
    validates :abbreviation, presence: true, length: {  in: 1..10 }
    validates :company_id, presence: true
    validates :systemsType, presence: true
    validates :dateRelease, format: { with: /\d{4}\-(0?[1-9]|1[012])\-([12][0-9]|3[01]|0?[1-9])/,
    message: "only date" }
end
