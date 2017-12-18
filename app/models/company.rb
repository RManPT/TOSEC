class Company < ApplicationRecord
    has_attached_file :image, styles: { medium:"300x300", thumb: "150x150#"}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_many :systems
    validates :title, presence:true, length: {minimum: 2}
    validates :text, presence:true, length: {minimum: 6}
end
