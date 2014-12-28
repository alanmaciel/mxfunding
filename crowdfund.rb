require_relative 'project'
require_relative 'startup'

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
