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
})
.then(response => {
if (response.ok) {
return response.json();
} else {
throw response;
}
}).then(JSONresponse => console.log(JSONresponse))
This README would normally document whatever steps are necessary to get the
application up and running.
