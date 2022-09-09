class Product < ApplicationRecord
  # belongs_to :user
  belongs_to :seller, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
end
