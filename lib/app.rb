def report(string)
  array = string.delete(' ').split(',')
  green_no = array.count('Green') + array.count('green')
  amber_no = array.count('Amber')+ array.count('amber')
  red_no = array.count('Red')+ array.count('red')
  error_no = array.count - (green_no + amber_no + red_no)
  output = ""

  if green_no > 0
    output << "Green: #{green_no}"
    if amber_no > 0 || red_no > 0 || error_no > 0
      output << "\n"
    end
  end

  if amber_no > 0
    output << "Amber: #{amber_no}"
    if red_no > 0 || error_no > 0
      output << "\n"
    end
  end

  if red_no > 0
    output << "Red: #{red_no}"
    if error_no > 0
      output << "\n"
    end
  end

  if error_no > 0
    output << "Errors: #{error_no}"
  end

  return output
end
