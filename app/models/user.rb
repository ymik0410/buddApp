class User < ApplicationRecord
  has_many :daily_goals, dependent: :destroy
  has_many :histories, dependent: :destroy
  has_many :goals, through: :histories
  has_one_attached :image
  validates :username, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def current_goal
    history = self.histories.where(end_date: nil).order(start_date: :desc).first
    if history.present?
      history.goal
    else
      return nil
    end
  end

  def country_name
    country_longname = ISO3166::Country[country]
    country_longname.translations[I18n.locale.to_s] || country.name
  end
  # def streakk
  #   @streak_count = 0
  #   today = Time.now.to_date

  #   dates_array = self.daily_goals.map do |daily_goal|
  #     daily_goal.created_at.to_date
  #   end

  #   unique_dates = dates_array.uniq

  #   unique_dates.reduce(today) do |memo, date|
  #     yesterday = memo.yesterday.to_date
  #     if date == yesterday || date == today
  #       @streak_count += 1
  #       memo = date
  #     end
  #   end
  #   @streak_count
  # end

  # def longest_streakk
  #   streaks = []
  #   streaks << @streak_count
  #   longest_streak = streaks.max

  #   return longest_streak
  # end

  def buddy
    if self.buddyships.empty?
      return nil
    else
      if self.buddyships.last.user1 == self
        return self.buddyships.last.user2
      else
        return self.buddyships.last.user1
      end
    end
  end

  def buddyships
    Buddyship.where("user1_id = ? OR user2_id = ?", self.id, self.id)
  end
end
