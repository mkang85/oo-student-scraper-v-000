class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    new_student = @student_hash.each do |key, val|
      self.send("#{key}=", val)
    end
    @@all << self 
  end

  def self.create_from_collection(students_array)
    (iterate over an array of hashes)
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all

  end
end
