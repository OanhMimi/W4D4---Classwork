require "game"

describe Game do
    let(:tower_of_hanoi) {Game.new}
    describe "#initialize" do
        it "should set instance variable @stacks to equal a 2D array" do
            expect(tower_of_hanoi.instance_variable_get(:@stacks)).to eq([[3,2,1],[],[]])
        end
    end
    # describe "#user_input" do
    #  it "please enter what pile you want to move from?" do
    #     allow(tower_of_hanoi).to receive(:gets).and_return("1\n")
    #     expect { tower_of_hanoi.user_input }.to output(/number/).to_stdout
    #   end
    #   it "should call #gets to get input from the user" do
    #   allow(tower_of_hanoi).to receive(:gets).and_return("1\n")
    #   expect(tower_of_hanoi).to receive(:gets)
    #   tower_of_hanoi.user_input

    #   it "should call tower_of_hanoi#valid_move? with the user's number" do
    #   allow(tower_of_hanoi).to receive(:gets).and_return("1\n")
    #   expect(tower_of_hanoi).to receive(:valid_move).with(`1`)
    #   tower_of_hanoi.user_input

    #   allow(tower_of_hanoi).to receive(:gets).and_return("2\n")
    #   expect(tower_of_hanoi).to receive(:valid_move).with(2)
    #   tower_of_hanoi.user_input
    # end
    end
    describe "#valid_move?" do
        it "should check whether or not user input is valid" do
           expect(tower_of_hanoi.valid_move?(4,6)).to be(false)
        expect(tower_of_hanoi.valid_move?(0,1)).to be(true)
        end
    end

    describe "#maove" do
    it "allows user to move to an empty tile " do
        expect(tower_of_hanoi.valid_move?(0,1)).to_not be(false)
    end
    it "returns a valid move if move_from is less than move_to" do
        tower_of_hanoi.move(0,1)
        tower_of_hanoi.move(0,2)
        expect(tower_of_hanoi.valid_move?())
    end




end