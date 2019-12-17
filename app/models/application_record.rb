class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def total_quantity
    orderitems.sum(:quantity)
  end
  
end
