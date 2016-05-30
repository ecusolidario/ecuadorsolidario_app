class User < ActiveRecord::Base
  has_many :casos
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  acts_as_messageable
  def set_default_role
    self.role ||= :user
  end
  def label
    name
  end
  def mailboxer_email(object)
    email
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
