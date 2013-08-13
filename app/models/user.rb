class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :statuses #assumes there is a 'status' model and that the status model has a user_id field that matches up with this model's id field. Then we can use status.user and user.statuses.

  def full_name 
      first_name + " " +last_name
  end
  #attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :profile_name
end