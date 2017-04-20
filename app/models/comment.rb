class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.
end
