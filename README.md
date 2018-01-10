# sparta-web-application-xmas-project

## The brief

Your project over the Christmas break is to refresh all of your skills that you have learnt since starting at Sparta. You will need to create a website in Sinatra (ERB) to call the NASA NeoWs - (Near Earth Object Web Service)

This can be done on a JS timer event or merely a button to refresh after the initial site visit - It can be hosted on github pages or Heroku.

We would expect it to be fully automated Unit, API and front end tested as part of the product.

*Note* - You will need to look into what the API can provide to build an interesting site
*Note* - The main focus of this project is to show off your SDET skills and what you can do


## What I found difficult

Firstly regarding the service object model, I initially struggled with how to extract certain information. This was due to how it was stored. Some key values where stored within multiple hashes and then arrays. This task was made even harder because I had to figure out how to get this information in the most effcient way for multiple sets of data. So I spent sometime trying to figure out the best way to use the ```.each``` method alongside the ```.push``` method.

Secondly I found the task of creating a working form  that the user could use to enter dates and asteroid id arguments. I was not sure how to transfer the value that I collected in the body of the post request to the get request that would eventually display the information that was entered. The solution I settled for was to create global variables at the top of the nasa_api controller. The only issue with this was that routes for the get requests would only work if a value was submitted into the forms. This also meant that my urls were not dynamic. So for instance, if someone entered 2512271 as an id, the url would not contain this value.

This issue led to a third problem. I was unable to unit test a few of my get requests because they were dependent on values being collected from what was entered into the form:

```
get "/results/lookup" do
  @title = "Lookup"
  @lookup = GetLookup.new
  @results = @lookup.get_info_of_specific_neo(id)
  erb :'nasa_api/lookup'
end

```

The value of the ```(id)``` variable is determined by the following:

```
post '/lookup' do
  id = params[:title]
  redirect "/results/lookup"
end
```

So as a solution, what I did was defined the global variables with valid dates and ids:

id = '2153306'
startDate = '2017-01-10'
endDate = '2017-01-15'


For my GUI tests. I was also unsure how to test if a image was displayed when the user edited or created a new post. I though the ```.visible?``` method would be the solution. However this method still returns true despite no image being shown. I believe its because the method only checks that the image tag is displayed, not necessarily if the image shows up.

## What went well

I was happy that I was able to extract all the needed information from the API, that all the restful routes for my application was working correctly.


## How to run the web application

First of all, go to: https://github.com/solufemi91/sparta-web-application-xmas-project  and copy the link to the directory. Then in the terminal run the following command: ``` git clone git@github.com:solufemi91/sparta-web-application-xmas-project.git ```

Next change in that directory by executing: ``` cd sparta-web-application-xmas-project```


In order to install the following gems:

```

gem "sinatra"
gem "rack"
gem 'rspec'
gem 'rack-test'
gem 'capybara'

```

Execute the following command ``` bundle install ```. At this point, the computer will be ready to operate as a server.

To run the server, type in ``` rackup ``` in the terminal. Then go to your browser and type in : ```http://localhost:9292/``` Then the application can be accessed.
