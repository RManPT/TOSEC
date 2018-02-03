class Datstatus < ApplicationRecord
    has_many :datfile
    validates :name, presence: true,length: { minimum: 2 }
end
