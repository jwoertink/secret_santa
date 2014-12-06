class Participant < ActiveRecord::Base

  validates :email, uniqueness: true, presence: true
  validates :name, :group_id, presence: true

  def self.by_group(group_id)
    where(group_id: group_id)
  end

  def self.taken
    where(taken: true)
  end

  def self.available
    where(taken: false)
  end

end
