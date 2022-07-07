class Array

    def uniq
        arr = []
        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end

    def two_sum
        arr=[]
        self.each_with_index do |ele1,idx1|
            self.each_with_index do |ele2,idx2|
              arr << [idx1,idx2]  if idx2 > idx1 && ele1+ele2 == 0
            end
        end
        arr
    end

    def my_transpose
        arr = []
        (0...self.length).each do |i|
            temp_arr = []
            self.each do |subArray|
                temp_arr << subArray[i]
            end
            arr << temp_arr
        end
        arr
    end
    def stock_picker
        
        maax=self.max
        max_idex=self.index(maax)
        miin=self[0...max_idex].min
        [miin,maax]

    end
end