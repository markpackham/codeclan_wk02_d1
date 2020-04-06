require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../library")

class TestLibrary < MiniTest::Test
  def setup()
    @library = Library.new([{ title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } },
                            { title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } },
                            { title: "wuthering heights", rental_details: { student_name: "Liz", date: "16/04/19" } }])
  end

  def test_get_books
    books = [{ title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } },
             { title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } },
             { title: "wuthering heights", rental_details: { student_name: "Liz", date: "16/04/19" } }]
    assert_equal(books, @library.books)
  end

  def test_get_book
    assert_equal({ title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } }, @library.get_book("dune"))
  end
end
