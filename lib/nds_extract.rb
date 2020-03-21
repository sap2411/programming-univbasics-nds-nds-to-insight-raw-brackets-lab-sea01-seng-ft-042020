$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors_totals = {}
  nameSearch = 0
  while nameSearch < nds.count
    moviesCombinedTotal = 0
    g = 0 
    while g < nds[n][:movies].count
    movieGross = nds[n][:movies][g][:worldwide_gross]
    moviesCombinedGross += movieGRoss
    g += 1
    end
    totals[nds[n][:name]] = movieTotal
    n += 1
  end
  totals
end
