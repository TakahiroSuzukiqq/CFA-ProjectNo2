class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  #testing
   validates :item_name, presence: true, length: { minimum: 2 }

  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.
  # scope :approved, -> { where(approved: true) }
  # scope :pending, -> { where(approved: false) }


end
