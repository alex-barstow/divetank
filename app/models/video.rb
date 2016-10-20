class Video < ActiveRecord::Base
  belongs_to :dive

  validates :video_url, presence: true
end
