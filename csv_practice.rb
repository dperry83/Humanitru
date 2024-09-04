require "csv"

films_info = []
headers = nil

# CSV.foreach("working_with_csv/films.csv") do |row|
#   films_info << row
# end

CSV.foreach("working_with_csv/films.csv", headers: true, header_converters: :symbol) do |row|
    headers ||= row.headers
    films_info << row.to_h
  end


films_info[1].each do |k,v|
  puts "#{k}: #{v}"
end