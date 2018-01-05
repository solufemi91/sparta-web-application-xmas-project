require 'date'

startDate = Date.parse('2015-12-01')
endDate = Date.parse('2015-12-10')
date_array = []
(startDate..endDate).each do |num|
  date_array.push(num)
end

puts date_array
