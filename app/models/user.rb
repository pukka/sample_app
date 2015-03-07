class User < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  VAILD_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VAILD_EMAIL_REGEX }
end
