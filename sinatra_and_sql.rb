# How would you connect to a database using the PG gem?

# The database name is new-york
# The username is frank
# The password is hoboken
# The host is ec2-amazon-us-east-5.amazonaws.com

require 'sinatra'
require 'pg'
conn = PG::Connection.open(host:ec2-amazon-us-east-5.amazonaws.com, dbname: 'new-york', username: 'frank', password: 'hoboken')  

# Write a SQL statement that would fetch all of the columns and rows from a table called parties.
SELECT * FROM parties;

# Write a SQL statement that would select the columns name, revenue, number_of_employees 
# and all rows from a table called businesses.
SELECT name, revenue, number_of_employees FROM businesses;

# Write a SQL statement that would fetch all of the columns but only the rows where the revenue 
# is greater than 100000 from a table called businesses.
SELECT * FROM businesses WHERE revenue > 10000;

# Write a SQL statement that gets a single row in a table called products with the id 9234
SELECT * FROM products WHERE id=9234;

# Write a SQL statement that creates a new row in a table called students whose columns are first_name, 
# last_name, age with the values “Bawston”, “Stuntsin”, 38.
INSERT INTO students (first_name, last_name, age) VALUES('Bawston', 'Stuntsin', 38);

# Write a SQL statement that updates all rows with the first_name “Bawston” in a table called 
# students to have the first_name “Auston”
UPDATE students SET first_name = 'Auston' WHERE first_name = 'Bawston';

#Write a SQL statement that deletes a row by it’s ID (which is 154643) in the table 
# things_i_hate
DELETE FROM things_i_hate WHERE ID=154643;

# Write some code that would work in Sinatra to accept a color and a species that were POSTed 
# as params to a birds path and create a new row in a table named birds via SQL.

# This code should set the correct HTTP status code to be returned to the client as well.

post '/birds' do
	res = conn.exec_params('INSERT INTO birds (
	color, species
	) VALUES (
	$1, $2
	) returning *',
	[params[:color], params[:species]]);
	content_type :json
	status 201
	res.each_with_index.map{ |x, i| res[i] }.to_json
end

# Write some code that would work in Sinatra to accept a species that were PUTed as params 
# to a path for a bird with the ID 123 and update that birds species in the table named birds via SQL.
put '/birds/:id' do
	res = conn.exec_params(
    "UPDATE birds SET species = #{params[:species]} WHERE id = #{params[:id]}";
	content_type :json
	res.each_with_index.map{ |x, i| res[i] }.to_json
end















