// import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initProfileView= () => {
  const user_profile = document.getElementById("user-profile");
  const updown = document.getElementById("updown");

  if (user_profile && updown) {
    updown.addEventListener("click", (event) => {
      // toggle the profile-view class, & show/hide the up or down arrows

      if (user_profile.classList.contains("profile-shrink")) {  // if it is already shrunken, then expend
        user_profile.classList.replace("profile-shrink", "profile-expand");
        updown.innerHTML = "▼";
      }
      else if (user_profile.classList.contains("profile-expand")){  //if already expand, shrink
        user_profile.classList.replace("profile-expand", "profile-shrink");
        updown.innerHTML = "▲";
      }
      else {
        user_profile.classList.add("profile-expand"); //This condition mean it has never been expand in this session
        updown.innerHTML = "▼";
      }

      // updown_div.classList.toggle("down");
    });
  };
}

export { initProfileView };
