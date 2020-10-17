class NamesButton
  
    attr_reader :names
    
    def initialize(name)
      @names = name
    end
  
    def names_button
      "Hi #{ @names } please choose:"
    end

    
end