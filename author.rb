class Author
    @@all = []
    
    def initialize(name)
        @name = name
        save
    end
    def books
        Book.all.select {|book| book.author == self}
    end
    def write_book(title, word_count)
        Book.new(self, title, word_count)
    end
    def total_word
        Book.all.select {|book| book.author == self}.map{|book| book.word_count}.sum
    end
    def self.most_words
        Author.all.reduce{|author1, author2| author2.total_word > author1.total_word ? author2 : author1}
    end


    def save 
        @@all.push(self)
    end
    def self.all
        @@all
    end


end

