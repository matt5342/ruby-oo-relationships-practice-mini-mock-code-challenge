require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("john")
author2 = Author.new("jim")
author1.write_book("first", 20)
author1.write_book("second", 10)
author1.write_book("third", 5)
author2.write_book("longest", 50)

binding.pry


