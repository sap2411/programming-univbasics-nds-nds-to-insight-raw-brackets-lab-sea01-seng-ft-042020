$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  totals = {}
  n = 0
  while n < nds.count
    movieTotal = 0
    g = 0 
    while g < nds[n][:movies]
    movieTotal += nds[n][:movies][g][:worldwide_gross]
    g += 1
    end
    totals[nds[n][:name]] = movieTotal
    n += 1
  end
  totals
end
