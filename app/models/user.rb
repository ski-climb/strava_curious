class User < ApplicationRecord
  validates :uid, presence: true
  validates :uid, uniqueness: true

  def self.from_strava(athlete, token)
    where(uid: athlete[:id]).first_or_create do |new_user|
      new_user.first_name = athlete[:first_name]
      new_user.last_name =  athlete[:last_name]
      new_user.username =   athlete[:username]
      new_user.email =      athlete[:email]
      new_user.token =      token
    end
  end

  def name
    first_name.blank? ? username : first_name
  end
end
