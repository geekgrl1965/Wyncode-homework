cats = {}
(1..100).each do|i|
  cats[i] = 'hat'
end   #create hash with 100 cats wearing hats


    100.times do |i|  #loop over the hash 100 times
        i = 1
        while i < cats.length
          if cats[i] == "no hat"  #switch status from "no hat" to "hat"
               cats[i] = "hat"
          elsif cats[i] == "hat"  #switch status from "hat to no hat"
                cats[i] = "no hat"
          end
            i += 1
    end
  end

puts cats


do something with next method
