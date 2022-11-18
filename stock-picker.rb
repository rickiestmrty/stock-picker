def stock_picker(prices)
    largest_diff = 0
    output_idxs = [0,0]
    prices.each_with_index do |price1, idx1|
        prices.each_with_index do |price2, idx2|
            diff = price2-price1
        
            if diff > largest_diff && idx2 > idx1
                largest_diff = diff
                output_idxs = [idx1,idx2]
            end
        end
    end
    output_idxs
end
    

p stock_picker([17,3,6,9,15,8,6,1,10])