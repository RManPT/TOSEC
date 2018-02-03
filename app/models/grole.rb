class Grole < ApplicationRecord
  belongs_to :user
  belongs_to :role
  belongs_to :route
end
