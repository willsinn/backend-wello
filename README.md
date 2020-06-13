# README

rails db:drop && rails db:create && rails db:migrate && rails db:seed && rails s

fetch("http://localhost:3000/api/v1/login", {
method: "POST",
headers: {
"Content-Type": "application/json",
Accept: "application/json"
},
body: JSON.stringify({
user: {
username: 'ws',
password: '123456'
}
})
}).then(response => response.json()).then(JSONresponse => console.log(JSONresponse))
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
