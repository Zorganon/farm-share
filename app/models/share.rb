class Share < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  
  def availability
    #avble = @share.size.to_i * quantity
    #avble -= Order.quantity.where(share_id == @share.id)
    #avble should calculate how many shares are left given orders already placed and farmer's size and quantity on the template share.
  end
end