class Client < ActiveRecord::Base
  def browser
    self.user_agent[/^(.*?)\//].chop
  end

  def os
    self.user_agent[/\((.*?)\)/].gsub(/[\(\)]/, "")  
  end
    
end
