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

if __FILE__ == $0
  project = Project.new("ABC", 100, 10000)
  puts project
  project.add_funds
  puts project
  project.remove_funds
  puts project
end
