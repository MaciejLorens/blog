class User < ActiveRecord::Base
  attr_accessible :avatar, :email, :password, :password_confirmation, :remember_me
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  
  has_and_belongs_to_many :roles
  
  def is_admin?
    self.roles.include?(Role.find_by_name('admin'))
  end
  
  def is_user?
    self.roles.include?(Role.find_by_name('user'))
  end
end
