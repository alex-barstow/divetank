class Dive < ActiveRecord::Base
  belongs_to :user

  validates :site_name, presence: true
  validates :date, presence: true
end
