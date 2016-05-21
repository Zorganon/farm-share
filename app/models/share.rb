class Share < ActiveRecord::Base
    has_many :orders
end
