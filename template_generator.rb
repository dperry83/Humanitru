

@column_headers = ["date", "name", "amount"]

  def display_headers
    column_number = 1
    puts "your current column headers are: "
    @column_headers.each { |header| 
      print "#{column_number}. #{header} \n"
      column_number += 1
    }
  end
  
  def add_columns(input)
    display_headers
    while input == "y"
      print "Please type your next column name: "
        next_name = gets.downcase.chomp!
        @column_headers.push(next_name)
      puts "#{next_name.to_s} added to spreadsheet: "
      display_headers
      print "would you like to add more columns? (y/n): " #need to work out how to pass control back to calling method
      input = gets.downcase.chomp!
    end
  end

def controller(res) 
  if res == "y"
    add_columns (res)
  elsif res == "n"
    puts "then your spreadsheet is ready to print: "
    display_headers
  else
    puts "I don't understand that input. Please try again."
  end
end

  print "Welcome!  Would you like to add columns to your spreadsheet? (y/n) "
    response = gets.downcase.chomp!
    controller(response) 