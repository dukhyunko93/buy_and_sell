class Product < ApplicationRecord
<<<<<<< HEAD
    belongs_to :seller, :class_name => :User, optional: true
=======
    belongs_to :seller, :class_name => :User, eoptional: true
>>>>>>> 881c352d8e384bded18c821610cdec57416fd838
    belongs_to :purchased_item , optional: true
    has_many :reviews
    has_many :pending_cart

end
