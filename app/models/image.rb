class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :dive

  validates :image, presence: true
end
