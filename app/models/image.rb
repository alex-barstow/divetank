class Image < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  belongs_to :dive

  validates :image, presence: true

  def image_for_dive?(dive_id)
    if self.dive_id == Dive.find(dive_id).id
      true
    else
      false
    end
  end
end
