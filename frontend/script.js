document.getElementById("registrationForm")
  .addEventListener("submit", function(event){
    event.preventDefault();

    let user = {
      name: document.getElementById("name").value,
      email: document.getElementById("email").value,
      phone: document.getElementById("phone").value,
      eventName: document.getElementById("event").value,
      date: document.getElementById("date").value
    };

    let users = JSON.parse(localStorage.getItem("users")) || [];
    users.push(user);
    localStorage.setItem("users", JSON.stringify(users));

    alert("Registration Successful!");
    window.location.href = "participants.html";
});
