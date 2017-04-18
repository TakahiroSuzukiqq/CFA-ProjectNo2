class Post < ApplicationRecord
  belongs_to :user
  mount_uploaders :images, AvatarUploader
serialize :images, JSON # If you use SQLite, add this line.
end
