require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("#{index_url}"))
    student_info = []
    students = doc.css(".student-card a")
    students.each do |student|
    student_name = student.css("h4.student-name").text
    student_location = student.css("p.student-location").text
    student_URL = student.attr("href")
    student_info << {name: student_name, location: student_location, profile_url: student_URL}
    end
  student_info
end

  def self.scrape_profile_page(profile_url)
    student_page = Nokogiri::HTML(open("#{profile_url}"))
    links = student_page(".social-icon-container a")
  end

end
