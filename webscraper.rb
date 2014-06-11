require 'open-uri'
require 'nokogiri'
require 'pry'

# students = []
# [{:name => "Some Name", 
#   :tag_line => "My tagline", 
#   :excerpt => "", 
#   :image_url => "http://", 
#   :profile_url => "http://",
#   :profile_info => {}
#   }]

# html = open('http://ruby005.students.flatironschool.com/').read

# URLHacking

def name_grabber
  profiles = []
  doc = Nokogiri::HTML(open("http://ruby005.students.flatironschool.com/").read)
  profiles << doc.search("h3 a").collect{|e| e.text.strip }
  students = []
  profiles.each do |student_name|
    students << {:name => student_name} 
  end
  return students
end

# each name we pull down is the value of the name key
# one hash per student, and put them in an array of hashes





#puts profiles

# Other way cool too
# while i < 10
#   next_page = docsearch("a.button.next").attribute("href")
#   doc = Nokogiri::HTML(open("http://newyork.craigslist.org/roo/#{next_page}"))
#   prices << doc.search("span.price").collect{|e| e.text.gsub("$","").to_i}
#   i+=1
# end

# [1,2].inject(0) do |total, element|
#   total + element
# end
