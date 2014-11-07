project1 = "ABC"
project2 = "LMN"
project3 = "XYZ"

funding1 = 10000
funding2 = 15000
funding3 = 1200000

current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "Welcome to CrowdFunding".upcase.center(80, "*")
puts "At this time #{formatted_time} the projects have:".center(80)
puts "".center(80, "*")
puts "Project #{project1} has $#{funding1} in funding."
puts "Project #{project2} has $#{funding2} in funding."
puts "Project #{project3} has $#{funding3} in funding."

