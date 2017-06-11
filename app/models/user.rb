class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :orders
  has_many :products
  has_many :favorites
  has_many :favorite_products, :through => :favorites, :source => :product
  has_many :comments
  has_many :notes
  has_many :experiences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
    is_admin
  end

  def already_favorite?(product)
    favorite_products.include?(product)
  end

  def total_point
    experiences.sum(:point)
  end

end
