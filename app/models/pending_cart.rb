class PendingCart < ApplicationRecord
    belongs_to :buyer, :class_name => :User
    belongs_to :product
    
end
