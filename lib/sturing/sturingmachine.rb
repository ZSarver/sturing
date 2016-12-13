module Sturing
    class STuringMachine
        public
        def initialize(length = 10)
            @cells = Array.new(length, " ")
        end
        def get_cells
            stemp = ""
            @cells.each do |c|
                stemp << c
            end
            return stemp
        end
    end
end