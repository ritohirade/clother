class UserProduct < ApplicationRecord
    belongs_to :user_id, class_name: "User"
    belongs_to :product_id, class_name: "Product"

    enum status: { like: 0, dislike: 1 }
end
