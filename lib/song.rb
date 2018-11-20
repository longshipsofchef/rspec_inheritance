#create Album parent class
class Album
        attr_reader :artist, :album, :year
        
        def initialize artist, album, year
            @artist, @album, @year = artist, album, year    
        end
end
#Song will inherit from class Album
class Song < Album
    def initialize artist, title, duration, album, year, written_by
            super(artist, album, year)
            @title, @duration, @written_by  = title, duration, written_by  
    end

    def to_s
        "#{@artist}: #{@title} #{@duration} seconds."
    end

    def get_album
        "Album: #{@album}, year: #{@year}."
    end

    def get_written_by
        if @written_by.size > 0
            puts "#{@title} written by #{@written_by.join(" and ")}"
        else
            puts "#{@title} written by #{@written_by}"
        end
    end            

end