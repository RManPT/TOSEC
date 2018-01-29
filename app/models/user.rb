class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :datfiles
  has_many :grole
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
end
