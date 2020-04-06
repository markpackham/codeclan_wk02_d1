class Student
  attr_reader :name, :cohort
  attr_writer :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end
end
