class Country < ActiveRecord::Base
  attr_accessible :name, :language, :capital, :area_id, :popular_ranking, :imagephoto, :googlemap, :tags_attributes
  attr_accessible :name, :capital, :language, :area_id, :popular_ranking, :imagephoto, :googlemap, :is_admin, :as => :admin

  has_many :spots
  has_many :cities

  class << self
      def search(query)
        rel = order("id")
        if query.present?
          rel = rel.where("name LIKE ?",
                  "%#{query}%")
        end
      rel
      end
  end
end
