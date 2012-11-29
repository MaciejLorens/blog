class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  has_and_belongs_to_many :roles
  
  def is_admin?
    self.roles.include?(Role.find_by_name('admin'))
  end
  
  def is_user?
    self.roles.include?(Role.find_by_name('user'))
  end
end
