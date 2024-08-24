

@column_headers = ["date", "name", "amount"]
# Prompt for input for column names

  def display_headers
    column_number = 1
    puts "your current column headers are: "
    @column_headers.each { |header| 
      print "#{column_number}. #{header} \n"
      column_number += 1
    }
  end

display_headers

# Get next command from user
  #next step: refactor this method so that it continues running while the user inputs header names
  def add_columns
    print "would you like to add columns? (y/n): "
    response = gets.downcase.chomp!
    
    unless response == "n"
      print "Please type your next column name: "
        next_name = gets.downcase.chomp!
        @column_headers.push(next_name)
      puts "#{next_name.to_s} added to spreadsheet.  Would you like to add another?"
        response = gets.downcase.chomp!
    else
      puts "then your template is ready to print: \n"
      display_headers
    end
  end

=begin  
  case response
    when "y"
      print "type your column name and press enter: "
      next_name = gets.downcase.chomp!
      @column_headers.push(next_name)
    else puts "then your .csv file is ready to download"
  end
=end

add_columns

