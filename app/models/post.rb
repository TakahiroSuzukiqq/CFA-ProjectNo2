class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.

  # scope :approved, -> { where(approved: true) }
  # scope :pending, -> { where(approved: false) }


end
