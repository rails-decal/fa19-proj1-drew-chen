# Q0: Why are these two errors being thrown?

1st error:

When the model is first created, the changes to the database according to the migration are not made. `rails db:migrate` needs to be run to add that migration to the structure of the underlying database. 

2nd error:

When the controller tries to manipulate the model Pokemon, an error is thrown because the model for Pokemon was not created yet.



# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

All these pokemon are wild. In home_controller.rb, @pokemon is assigned to a random pokemon from a list of Pokemon without trainers. In index.html.erb, we displace this random wild pokemon.


# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This generates a button with the text "Throw a Pokeball!" form. It performs a HTTP request that goes to a patch route, capture.

# Question 3: What would you name your own Pokemon?

lemon

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
 

The redirect_to method instead of being passed a path, can be passed a hash. This url_for is called on this hash to create a url which redirect_to uses.
The hash I passed in was ":controller => 'trainers', :action => 'show', id: damaged_pokemon.trainer.id".


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
