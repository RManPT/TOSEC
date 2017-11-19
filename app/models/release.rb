class Release < ApplicationRecord
    validates :descRelease, presence: true,
    length: { in: 5..255 }
end
