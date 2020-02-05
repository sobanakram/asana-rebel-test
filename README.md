# Asana Rebel Test

Steps to run project
 
 1. Clone this project
 2. Install dependencies by this command `bundle install`
 3. Run `rails s` to start development server
 4. Send get request to `localhost:3000/api/locations/search` it required two parameters: `token` and `query`
 5. `token` is configured in Rails credentials, you can view or edit by this command `EDITOR=nano rails credentials:edit`
 6. master.key already included for this example(Otherwise it is not a good practice to add master.key file in public repo)
 7. It will return result in json format.
 
 To run Rspec tests run `rspec`
 
 I also deployed this app on heroku, you can test that too.
 url `https://msa-asana-rebel-test.herokuapp.com/api/locations/search`
 Make a get request to this end point with `token` and `query` params.