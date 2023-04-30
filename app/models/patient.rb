class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :full_name, presence: true
  validates :date_of_birth, presence: true
  validates :state, presence: true

  has_one :order, dependent: :destroy
  has_many :products, through: :orders
end
