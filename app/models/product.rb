class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted?
    price < 10
  end

  def tax
    tax = price * 0.09
  end

  def total 
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
end
