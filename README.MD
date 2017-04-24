# Shoe_Distribution

#### As a user, I want to be able to add, update, delete and list shoe stores.(done)
#### As a user, I want to be able to add and list new shoe brands.(done)
#### As a user, I want to be able to add shoe brands in the application (don’t worry about updating, listing or destroying shoe brands).(done)
#### As a user, I want to be able to add existing shoe brands to a store to show where they are sold.(done)
#### As a user, I want to be able to associate the same brand of shoes with multiple stores.(done)
#### As a user, I want to be able to see all of the brands a store sells on the individual store page.(done)
#### As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.(done)
#### As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name(done)

## Technologies Used

Application: Ruby, Sinatra, Active Record<br>
Testing: Rspec, Capybara<br>
Database: Postgres

Installation
------------


Install required gems:
```$ bundle install
```

Create databases:
```rake db:create
rake db:schema:load
```

Start the webserver:
```$ ruby app.rb
```

Navigate to `localhost:4567` in browser.

License
-------

free
# shoe-store-app
