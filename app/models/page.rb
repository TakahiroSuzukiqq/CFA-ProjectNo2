class Page < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.


end
