class SystemsType < ApplicationRecord
    has_many :system
    validates :name, presence: true, length: { in: 3..255 }
end
