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

class StartUp
  attr_reader :name

  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def request_funding
    @projects.each do |project|
      puts project
    end

    @projects.each do |project|
      project.add_funds
      project.remove_funds
      puts project
    end
  end
end

project1 = Project.new("ABC", 100, 10000)
project2 = Project.new("LMN", 200, 15000)
project3 = Project.new("XYZ", 300, 1200000)
project4 = Project.new("APP", 1500, 99900)

vc_friendly = StartUp.new("VC-Friendly Start-up Projects")
vc_friendly.add_project(project1)
vc_friendly.add_project(project2)
vc_friendly.add_project(project3)
vc_friendly.add_project(project4)
vc_friendly.request_funding
