require "time"

def cal_number_day_off work_date
  now = DateTime.now
  number_working_date = (now - work_date).to_i
  raise Exception if number_working_date < 0
  number_working_year = number_working_date / 365
  if now.year > work_date.year
    case number_working_year
    when 0..3
      12
    when 4
      13
    else
      14
    end
  else
    if work_date.day >= 10
      12 - work_date.month + 0.5
    else
      12 - work_date.month + 1
    end
  end
end

begin
  print "Enter date: (format: mm/dd/yyyy)"
  date = DateTime.strptime(gets.chomp, "%m/%d/%Y")
  puts "Number of day off: #{cal_number_day_off(date)}"
rescue
  puts "Invalid date"
end
