class Dive < ActiveRecord::Base
  belongs_to :user
  has_many :images
  has_many :videos

  validates :title, presence: true
  validates :site_name, presence: true
  validates :date, presence: true
  validates :max_depth, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 1..5 }
end
