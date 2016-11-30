class Order < ActiveRecord::Base
    has_many :user
    has_many :shares
end