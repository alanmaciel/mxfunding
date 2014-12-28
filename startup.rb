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
