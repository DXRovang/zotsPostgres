module InstrumentsHelper
  def self.family
    self.category.family.name
  end

  def banjo_categories
    Category.where(id: [1...5])
  end

  def guitar_categories
    Category.where(id: [5...13])
  end

  def mandolin_categories
    Category.where(id: [13...16])
  end
end
