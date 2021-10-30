class Instrument < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :maker
  belongs_to :family

  validates_presence_of :price, :year, :maker_name
  def user_name=(name) #shouldn't need _or_create
    self.user = User.find_by(username: name)
  end
  def user_name
    self.user ? self.user.username : nil
  end

  def maker_name=(name)
    self.maker = Maker.find_or_create_by(name: name)
  end
  def maker_name
    self.maker ? self.maker.name : nil
  end

  def self.category_search(category_id)
    self.where("category_id = ?", category_id)
  end
end
