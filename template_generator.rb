require "csv"

@column_headers = []
clients = [["09/15/2024", "John Smith", 500], 
          ["09/07/2024", "Susie James", 1500],
          ["09/25/2024", "David Perry", 250]]


# display column headers in a list for approval
  def display_headers
    column_number = 1
    puts "your current column headers are: "
    @column_headers.each { |header| 
      print "#{column_number}. #{header} \n"
      column_number += 1 
    }
  end

# add columns in order input, and pass out of method when user inputs 'n'
  def add_columns(input)
    display_headers
    while input == "y"
      print "Please type your next column name: "
        next_name = gets.downcase.chomp!
        @column_headers.push(next_name)
      puts "#{next_name.to_s} added to spreadsheet: "
      display_headers
      print "would you like to add more columns? (y/n): " 
      input = gets.downcase.chomp!
    end
  end



  print "Welcome!  Would you like to add columns to your spreadsheet? (y/n) "
    response = gets.downcase.chomp!
    add_columns(response) 

  print "then your spreadsheet is ready!"

CSV.open("action_template.csv", "w") do |csv|
  csv << @column_headers
  clients.each do |client|
    csv << client
  end
end

# CSV.foreach("action_template.csv", headers: true, header_converters: :symbol) do |row|
#   clients.each do |client|
# end


