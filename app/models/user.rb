class User < ActiveRecord::Base
  has_secure_password 

  has_many :rides 
  has_many :attractions, through: :rides 

  validates :password, presence: true

  def mood 
    unless self.admin
      if self.nausea > self.happiness 
        "sad"
      elsif self.nausea < self.happiness 
        "happy"
      end
    end 
  end
 
end
