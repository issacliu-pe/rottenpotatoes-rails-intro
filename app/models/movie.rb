class Movie < ActiveRecord::Base
    
    @all_ratings = ['G', 'PG', 'PG-13', 'R']
	@ratings_to_show = []
	
    def self.with_ratings(ratings_list, sort_by)
    # if ratings_list is an array such as ['G', 'PG', 'R'], retrieve all
    #  movies with those ratings
    # if ratings_list is nil, retrieve ALL movies
    
        if sort_by
            
          return Movie.where({rating: ratings_list}).order(sort_by)
          
        else
            
          return Movie.where({rating: ratings_list})
          
        end
        
    end
    
    def self.all_ratings
        return @all_ratings
    end
    
	def self.ratings_to_show
		return @ratings_to_show
	end
end
