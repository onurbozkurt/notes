class User < ApplicationRecord
  has_many :notes, dependent: :destroy

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.nickname = auth["info"]["nickname"]
      user.email = auth["info"]["email"]
      user.name = auth["info"]["name"]
      user.image = auth["info"]["image"]
    end
  end
end
