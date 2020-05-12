def report(string)
  green_no = 0
  array = string.split(',')
  array.each do |grade|
    if grade == 'Green'
      green_no += 1
    end
  return "Green: #{green_no}"
  end
end
