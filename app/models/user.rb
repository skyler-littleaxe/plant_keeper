class User < ApplicationRecord
  has_many :waterings
  has_many :plants, :through => :waterings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook]

         def self.from_omniauth(auth)
          user = User.where(email: auth.info.email).first
          user ||= User.create!(provider: auth.provider, uid: auth.uid, name: auth.name, email: auth.info.email, password: Devise.friendly_token[0, 20])
            user
        end
end
