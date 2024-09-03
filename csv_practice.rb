require "csv"

films_info = []

CSV.foreach("working_with_csv/films.csv") do |row|
  films_info << row
end



# films_info.each { |line| 
#   print line
# }