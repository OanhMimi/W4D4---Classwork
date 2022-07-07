require 'tdd_project'

describe Array do
    describe '#uniq' do
        it 'returns a unique array' do
            expect([1,1,2,3].uniq).to eq([1,2,3])
        end
    end 
    describe "#two_sum" do
        it "return all pairs positions that sum to 0" do
            expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
        end
   end

   describe "my_transpose" do
        it "return a transpose copy of the array" do
            array = [
                [0,1,2],
                [3,4,5],
                [6,7,8]]
            expect(array.my_transpose).to eq([[0,3,6],[1,4,7],[2,5,8]])
        end
   end
   describe "stock_picker" do
    it "returns the most profitable pairs of days" do
        prices=[50,60,70,65,45,80,90,75,30]
        expect(prices.stock_picker).to eq([45,90])
   end

    end

end
