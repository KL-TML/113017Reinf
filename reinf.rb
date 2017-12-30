array = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

print array

array.each_with_index do |row , index1|
  row.each_with_index do |seat , index2|
    if seat == nil
      puts "Row: #{index1+1} Seat: #{index2+1} is available.Do you want to sit there? (yes/no) "
        if (x = gets.chomp) == "yes"
          puts "What is your name?"
          array[index1][index2] = gets.chomp
          puts array
        abort
      end
    end
  end
end
