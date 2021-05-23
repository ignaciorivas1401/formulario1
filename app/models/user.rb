class User < ApplicationRecord

    validates :email, presence: true
    validates :age, numericality:{ greater_than:17, less_than:151 }
    scope :find_valid, -> {where("age >?",20)}

    before_save  :set_full_name

    def set_full_name
        self.full_name ="#{self.name} #{self.last_name}"
    end
    
end
