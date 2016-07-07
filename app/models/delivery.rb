class Delivery < ActiveRecord::Base
  belongs_to :driver
  belongs_to :customer
end
