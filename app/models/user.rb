class User < ApplicationRecord
    devise :database_authenticatable,
       :recoverable, :rememberable, :validatable
    validates :email, presence: true,uniqueness: true
    validates :password, presence: true
    has_many :post
end
