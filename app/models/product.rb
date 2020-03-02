class Product < ApplicationRecord
    attachment :product_image
    mount_uploader :product_image, ImageUploader
end
