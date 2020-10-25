class User < ActiveRecord::Base
  has_secure_password 

  has_many :rides 
  has_many :attractions, through: :rides 

  validates :password, presence: true

  def mood 
    if self.nausea > self.happiness 
      puts "sad"
    elsif self.nausea < self.happiness 
      puts "happy"
    end
  end
 
end
