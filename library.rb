class Library
    # attr_reader :title, :rental_details, :student_name, :date
    # attr_writer :title, :rental_details, :student_name, :date
  
    # def initialize(title, rental_details, student_name, date)
    #     @title = title
    #     @rental_details = rental_details
    #     @student_name = student_name
    #     @date = date
    # end
  
    # def get_book_title(name)
    #     for lib in library 
    #         p "Hello"
    #         #p lib
    #     end
    # end

    def initialize(title, rental_details, student_name, date)
        {
            @title: title,
            @rental_details:{
                @student_name: student_name,
                @date: date
            }
        }
    end

  end