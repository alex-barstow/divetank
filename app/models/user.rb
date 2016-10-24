class User < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader

  has_many :dives

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :user_name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 16 }
  validates :starting_dive_number, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
