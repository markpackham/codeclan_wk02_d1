class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book(book)
    for bo in books
        if(bo[:title] == book)
            return bo
        end
    end
  end
end
