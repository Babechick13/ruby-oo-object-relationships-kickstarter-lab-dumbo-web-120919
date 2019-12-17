require 'pry'
class Backer
  attr_reader :name, :back_project
  
def initialize(name)
  @name = name 
end 

def back_project(project)
  #binding.pry 
  ProjectBacker.new(project, self) 
  #binding.pry
end 

def projects 
  backed_projects.compact
end 

def backed_projects
  Projectbacker.all.map do |pros_b|
    if pros_b.backer == self
      pros_b.project 
    end
  end
end

  #binding.pry
end