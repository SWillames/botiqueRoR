require 'rails_helper'

describe "Product" do
    context "validation" do
      it "require price" do
        product = Product.create(price: nil)
        expect(product.errors[:price].size).to be>=1
      end

      it "require description" do
        product = Product.create(description: nil)
        expect(product.errors[:description].size).to be>=1
      end

      it "require mark" do
        product = Product.create(mark: nil)
        expect(product.errors[:mark].size).to be>=1
      end
    end
end
