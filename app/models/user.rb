class User < ActiveRecord::Base
  has_and_belongs_to_many :rols
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :username, :password, :password_confirmation, :remember_me, :rol_ids
  # attr_accessible :title, :body
  def rol?(rol)
    return !!self.rols.find_by_nombre(rol.to_s.camelize)
  end
end
