# Q0: Why are these two errors being thrown?

1st error:

When the model is first created, the changes to the database according to the migration are not made. `rails db:migrate` needs to be run to add that migration to the structure of the underlying database. 

2nd error:

When the controller tries to manipulate the model Pokemon, an error is thrown because the model for Pokemon was not created yet.



# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *




# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

# Question 3: What would you name your own Pokemon?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
