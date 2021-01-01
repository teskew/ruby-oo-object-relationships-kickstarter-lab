

class Project
    @@all = []
    attr_accessor :title, :backers
    def initialize(title)
        @backers= []
        @title = title
    end

  def add_backer(backer)
    self.backers << backer
   backer.backed_projects << self

  end
end


 
