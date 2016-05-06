class Order < ActiveRecord::Base
    belongs_to :user
    has_one :share
end
