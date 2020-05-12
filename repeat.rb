class CheckRepeated
  def initialize(list)
    # Instance variables
    @list = list
    @repeated = []
    @nonrepeated = []
  end
  def get_repeated
    @list.each do |item|
      if @nonrepeated.include?(item)
        @repeated << item
      else
        @nonrepeated << item
      end
    end
    return @repeated
  end
end
