
## READ ME

### Date
Monday, February 8th, 2021

### Location of deployed application
http://18.220.78.67:3001/graphiql

### Time spent
6-8h

### Assumptions made
I assumed while creating this application that the api was designed to use by 
a frontend application. This is why I decided to utilize graphql, because it gives the
frontend the power to ask for exactly what it needs and maintains the API's flexibility to grow

### Stretch goals attempted
- I deployed my API to an AWS EC2 instance.
- Proxied the OpenWeatherMap API, which was pretty easy to incorporate
- Did not work on the frontend, or authentication as I had very limited time. 

### Instructions to run assignment locally
 These installation instructions will change based on the OS, but you require is:
 - Ruby '2.7.2'
 - Bundler version 2.1.4 
 - sqlite3
 
 Then in the project directory: 
 ```text
$ bundle install
$ rails s
```

### What did you not include in your solution that you want us to know about?
- Frontend - due to time
- Authentication - due to time
 
### Other information about your submission that you feel it's important that we know if applicable.
Here is a sample query to get started.
```text
query {
   weather(city: "toronto"){
     city
     temp
     icon
     condition
     pressure
     humidity
     maxTemp
     minTemp
     lastUpdated
   }
 }
```

You can paste this in the graphiql UI (/graphiql) and hit play to get a response or 
create a post request using curl, which looks like this:

```text
curl -X POST \
-H "Content-Type: application/json" \
--data '{ "query": "{ weather(city: \"toronto\"){ city temp icon condition pressure humidity maxTemp minTemp lastUpdated}}" }' \
http://18.220.78.67:3001/graphql
``` 
