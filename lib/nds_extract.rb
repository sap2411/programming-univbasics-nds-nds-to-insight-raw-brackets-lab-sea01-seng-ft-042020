$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_totals = {}
  nameSearch = 0
  while nameSearch < nds.count
   directorName = nds[nameSearch][:name]
   moviesCombinedTotal = 0
   movieSearch = 0 
   while movieSearch < nds[nameSearch][:movies].count
   movieGross = nds[nameSearch][:movies][movieSearch][:worldwide_gross]
    moviesCombinedTotal += movieGross
    movieSearch += 1
    end
    directors_totals[directorName] = moviesCombinedTotal
    nameSearch += 1
  end
  directors_totals
end
