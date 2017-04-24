class Page < ApplicationRecord

  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.

  end
