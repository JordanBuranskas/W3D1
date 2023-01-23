class Array 
    def flatten
        return [self] if !self.is_a?(Array)
        arr = []
        self.each{|sub|arr += flatten(sub)}
        arr 
        end 
end 