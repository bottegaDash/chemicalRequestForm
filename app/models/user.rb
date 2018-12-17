class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def info
    p last_name.upcase + ", " + first_name.upcase
    last_name.upcase + ", " + first_name.upcase
  end
end
