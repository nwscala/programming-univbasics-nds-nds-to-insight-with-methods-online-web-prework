require 'directors_database'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
# director_total = 0
#     index_2 = 0
#     while index_2 < nds[index_1][:movies].count do
#       director_total += nds[index_1][:movies][index_2][:worldwide_gross]
#       index_2 += 1
#     end


def directors_totals(nds)
  index_1 = 0
  total_hash = {}
  while index_1 < nds.count do
    total_hash[nds[index_1][:name]] = gross_for_director(nds[index_1])
    index_1 += 1 
  end
  total_hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # binding.pry
  index = 0
  director_total = 0
  while index < director_data[:movies].count do 
    director_total += director_data[:movies][index][:worldwide_gross]
    index += 1 
  end
  director_total
end