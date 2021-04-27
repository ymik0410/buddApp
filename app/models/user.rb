class User < ApplicationRecord
  has_many :histories, dependent: :destroy
  has_many :goals, through: :histories
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_goal
    self.histories.where(end_date: nil).order(start_date: :desc).first.goal
  end

end
