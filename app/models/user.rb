class User < ApplicationRecord

    # validates :name,:email, presence: true
    # validates :age, numericality: true
    # validates :email, uniqueness: true

    # has_many: products

  has_many :selling_products, class_name: "Product", foreign_key: "seller_id", :dependent => :delete_all 
  has_many :buying_products, class_name: "Product", foreign_key: "buyer_id" , :dependent => :delete_all 
end
