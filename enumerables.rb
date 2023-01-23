class Array 
    def my_each(&prc)
        i = 0 
        while i < self.length 
            prc.call(self[i])
            i+=1 
        end 

        return self
    end 

    def my_select(&prc)

        new_array = []
        self.my_each{|ele|new_array << ele if prc.call(ele)}
        new_array
    end

    def my_reject(&prc)
        new_array = []
        self.my_each{|ele|new_array << ele if !prc.call(ele)}
        new_array
    end 

    def my_any?(&prc)
       
        self.my_each{|ele|return true if prc.call(ele); return false if !prc.call(ele)}
    
    end 

    





end 



