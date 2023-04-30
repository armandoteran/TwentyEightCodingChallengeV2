class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy, optional: true
  has_many :orders, dependent: :destroy
  has_many :patients, through: :orders
end
