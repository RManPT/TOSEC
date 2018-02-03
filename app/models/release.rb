class Release < ApplicationRecord
    validates :descRelease, presence: true,
    length: { in: 5..255 }
    has_and_belongs_to_many :datfiles
end
