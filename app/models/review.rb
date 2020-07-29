class Review < ApplicationRecord
    belongs_to :purchased_item
<<<<<<< HEAD
    
=======
    belongs_to :buyer, :class_name => :User
    belongs_to :seller, :class_name => :User
>>>>>>> 42a70a79c8c1b2cf7a3361431b198fe59c15c4e1
end
