class Dive < ActiveRecord::Base
  mount_uploader :banner, BannerUploader

  belongs_to :user

  validates :title, presence: true
  validates :site_name, presence: true
  validates :date, presence: true
end
