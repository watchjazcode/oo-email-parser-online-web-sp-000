# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails.split(/[\,\ ]/).reject{|email| email == ""}.uniq
  end
  #splitting on , or space in regex
  #reject gets rid or black entries in Array
  #uniq removes duplicates
end