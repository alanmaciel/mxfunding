class Project
  attr_reader :funding, :end_funding
  attr_accessor :name

  def initialize(name, funding, end_funding)
    @name = name
    @funding = funding
    @end_funding = end_funding
  end

  def add_funds
    @funding += 25
    puts "Project #{@name} got more funds!"
  end

  def remove_funds
    @funding -= 15
    puts "Project #{@name} lost some funds!"
  end

  def to_s
    "Project #{@name} has #{@funding} towards a goal of #{@end_funding} you need still: #{total_funding_needed}"
  end

  def total_funding_needed
    @end_funding - @funding
  end
end


project1 = Project.new("ABC", 100, 10000)
project2 = Project.new("LMN", 200, 15000)
project3 = Project.new("XYZ", 300, 1200000)

current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "Welcome to CrowdFunding".upcase.center(80, "*")
puts "At this time #{formatted_time} the projects have:".center(80)
puts "".center(80, "*")

puts project1
puts project2
puts project3

project1.add_funds
puts project1
project2.remove_funds
puts project2
project3.add_funds
puts project3
project3.remove_funds
puts project3
