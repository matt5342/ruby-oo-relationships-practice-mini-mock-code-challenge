class Book
    @@all = []
    attr_reader :author, :title, :word_count
    def initialize(author, title, word_count)
        @author = author
        @title = title
        @word_count = word_count
        save
    end

    def save 
        @@all.push(self)
    end
    def self.all
        @@all
    end

end