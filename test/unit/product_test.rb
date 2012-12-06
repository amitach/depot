require 'test_helper'

class ProductTest < ActiveSupport::TestCase
   test "product attributes must not be empty" do
     product = Product.new
     product.title = "Binod"
     product.description = "time pass"
     product.price = 100.00
     product.image_url = "rails.png"
     product.save
     assert product.valid?
     assert product.errors[:title].blank?
     assert product.errors[:description].blank?
     assert product.errors[:price].blank?
     assert product.errors[:image_url].blank?
   end
end
