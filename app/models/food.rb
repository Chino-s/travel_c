class Food < ActiveRecord::Base
  attr_accessible :name,:country_id,:food_category_id, :tags_attributes
  attr_accessible :name,:country_id,:food_category_id, :is_admin, :as => :admin
end
