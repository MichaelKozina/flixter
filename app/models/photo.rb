class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :courses
  has_many :captions  
  
  mount_uploader :image, ImageUploader
end