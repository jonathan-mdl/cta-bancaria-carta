class Card

attr_reader :number, :color

    def initialize 
        @color = ['T', 'C', 'D', 'E'].sample
        @number = rand(1..13)
    end

    def reveal
        "#{@number}-#{@color}"
    end
end

class Play 
attr_accessor :play, :name

    def initialize(name)
        @name = name
        @play = []
        5.times do
            @play << Card.new.reveal 
        end
    end
end





