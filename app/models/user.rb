class User < ApplicationRecord
  rolify
  after_create :assign_default_role
  mount_uploaders :images, AvatarUploader
  serialize :images, JSON # If you use SQLite, add this line.


 def assign_default_role
   self.add_role(:member) if self.roles.blank?
 end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
  has_one :supplier

end
