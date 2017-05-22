class Country < ActiveRecord::Base
  attr_accessible :name, :language, :capital, :area_id, :popular_ranking

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
