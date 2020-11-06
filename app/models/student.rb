class Student < ActiveRecord::Base
  def to_s
    if first_name && last_name
    self.first_name + " " + self.last_name
    end
  end
end

