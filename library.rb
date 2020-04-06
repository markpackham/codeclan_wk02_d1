class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book(title)
    for bo in books
        if(bo[:title] == title)
            return bo
        end
    end
  end

  def get_book_rental_info(title)
    for bo in books
        if(bo[:title] == title)
            return bo[:rental_details]
        end
    end
  end
end
