require "mysql"
dbname = "buecherei"

m = Mysql.new("localhost", "root", "")
m.select_db("buecherei")
result = m.query("SELECT * FROM books")

result.each do |array|
	array.each do |value|
	puts value
	end
	puts
end
m.close
