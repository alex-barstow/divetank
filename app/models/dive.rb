class Dive < ActiveRecord::Base
  belongs_to :user
  has_many :images

  validates :title, presence: true
  validates :site_name, presence: true
  validates :date, presence: true
  validates :max_depth, presence: true
end
