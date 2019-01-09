require 'pry'

def consolidate_cart(cart)
  new_cart = {}
  cart.each do |hash|
    hash.each do |item, info|
      new_cart[item] ||= info
      new_cart[item][:count] ||= 0
      new_cart[item][:count] += 1
    end
  end
  return new_cart
end

def apply_coupons(cart, coupons)
  new_hash = {}
  count = 0
  cart.each do |cart_item, info_hash|
    coupons.each do |coupon_item|
      if cart_item == coupon_item[:item]
        new_hash = {coupon_item[:item] + " W/COUPON" => {:price => coupon_item[:cost], :clearance => true, :count => count += 1}}
      end
    new_cart_count = info_hash[:count] - coupon_item[:num]
    info_hash[:count] = new_cart_count
    end
  end
  new_hash
  merged_cart = cart.merge(new_hash)
  return merged_cart
end

def apply_clearance(cart)

end

def checkout(cart, coupons)

end
