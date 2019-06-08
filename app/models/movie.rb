class Movie < ActiveRecord::Base
  def initialize(attributes)
    attributes.each |key, value| { self.send("#{key}=", value) }
    self.save
  end
end
