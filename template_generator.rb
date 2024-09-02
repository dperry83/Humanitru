

@column_headers = ["date", "name", "amount"]

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

  print "then your spreadsheet is ready to print: "
    display_headers


