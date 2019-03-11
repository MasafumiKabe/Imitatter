class Tweet < ApplicationRecord
  belongs_to :user
  
  mount_uploader :image, PhotoUploader
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :favorites, dependent: :destroy
  has_many :likers, through: :favorites, source: :user
end
