class Datfile < ApplicationRecord
  has_attached_file :file
  
  # do_not_validate_attachment_file_type :file
  
  validates_attachment_content_type :file, :content_type => ['text/html','text/xml','application/xml'], file_name: { matches: /\.dat\z/ }
  # validates_attachment :file, :presence => true, file_name: { matches: /\.dat\z/ }
  # validates_attachment_content_type :file, content_type: /\.dat\z/

  belongs_to :collection_type, required: true
  belongs_to :user, required: true
  belongs_to :system, required: true
  belongs_to :datstatus, required: true
  has_and_belongs_to_many :releases
  
  validates :name, presence: true,length: { minimum: 5 }
  validates :readme, presence: true,length: { minimum: 5 }  
  validates :collection_type_id, presence: true
  validates :system_id, presence: true  
  validates :datstatus_id, presence: true  
  validates :user_id, presence: true  
end
