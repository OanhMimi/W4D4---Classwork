class Game

    def initialize
        @stacks=[[3,2,1],[],[]]
    end

  
    def user_input
        # p "please enter what pile you want to move from?"
        move_from = gets.chomp.to_i
        # p "please enter what pile you want to move to?"
        move_to = gets.chomp.to_i
        if valid_move?(move_from,move_to)
            move(move_from,move_to)
        else
            raise "not a valid move"
        end

    end

    def valid_move?(move_from,move_to)
        return false if !((1..3)===move_from) || !((1..3)===move_to) 
        if @stacks[move_from].empty?
            raise "cannot move from empty stack"
            return false
        end
        if @stacks[move_to].last < @stacks[move_from].last
            raise "cannot move onto smaller disk" 
            return false
        end
        true
    end
    
    def move(move_from,move_to)
        ele = @stacks[move_from].pop
        @stacks[move_to].push(ele)
    end


    def won?
        @stacks[0].empty? && @stacks[1..2].any?{|sub| sub.empty?}
    end





end