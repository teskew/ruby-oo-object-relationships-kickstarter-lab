
class Backer

   attr_accessor :name
   
   @@all = []

 def initialize(name)
   @name = name
   @@all << self 
 end

 def back_project(project)
   ProjectBacker.new(project, self)
 end

 def backed_projects
   new_list = ProjectBacker.all.select do |list|
     list.backer == self 
   end
   new_list.map do |list|
     list.project 
   end 
 end 
end



class ProjectBacker

 attr_accessor :project, :backer 

 @@all = []

 def initialize(project, backer)
   @project = project
   @backer = backer
   @@all << self
 end

 def self.all
   @@all
 end
 
end



class Project

 attr_accessor :title

 @@all = []

 def initialize(title)
   @title = title
   @@all << self
 end

 def add_backer(backer)
   ProjectBacker.new(self, backer)
 end 

 def backers
   new_list = ProjectBacker.all.select do |list|
     list.project == self 
   end
   new_list.map do |list|
     list.backer 
   end 
 end

end




