class Tie < ApplicationRecord
  belongs_to :user1, class_name: 'User', foreign_key: 'user1_id'
  belongs_to :user2, class_name: 'User', foreign_key: 'user2_id'
  has_many :messages
  validates :user1, uniqueness: { scope: :user2 }
  validate :unique_ties

  # Custom validation method to ensure no duplication of ties regardless of order of each user ids
  def unique_ties
    var = self.user1.ties.map do |tie| # mapping the current Tie being instantiated's user 1 and their existing ties' user ID
      [tie.user1_id, tie.user2_id] # ...into an array e.g. [[1,2][1,3][3,1][1,4]]
    end
    var.each do |tie| # iterate through that array
      if tie.sort == [self.user1_id, self.user2_id].sort # and checking if any existing ties match the instantiated tie | the .sort normalises the data e.g. [2,1] = [1,2]
        errors.add(:base, "Tie already exist") # if it exists, it will give an error
      end
    end
  end

  def Tie.user_ties(user)
    Tie.where(user1: user).or(Tie.where(user2: user))
  end
end
