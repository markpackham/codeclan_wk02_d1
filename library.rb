class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_book(title)
    for bo in books
      if (bo[:title] == title)
        return bo
      end
    end
  end

  def get_book_rental_info(title)
    for bo in books
      if (bo[:title] == title)
        return bo[:rental_details]
      end
    end
  end

  def add_book(new_book)
    @books.push(new_book)
  end
end
