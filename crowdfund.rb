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
project4 = Project.new("APP", 1500, 99900)

projects = [project1, project2, project3]

projects.pop
projects.push(project4)
current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d/%Y at %I:%M%p")
puts "Welcome to CrowdFunding".upcase.center(80, "*")
puts "At this time #{formatted_time} the #{projects.size} projects have:".center(80)
puts "".center(80, "*")

projects.each do |project|
  puts project
end

puts "".center(80, "*")

projects.each do |project|
  project.add_funds
  project.add_funds
  project.remove_funds
  puts project
end
