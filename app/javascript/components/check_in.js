import swal from 'sweetalert';

function bindSweetAlertCheckIn() {

  const checkins = document.querySelectorAll('.checkin-alert');

   checkins.forEach((checkin) => {
     checkin.addEventListener('click', (e) => {
       // e.preventDefault();
       swal({
         title: "Thank you for checking in!",
         text: "See offers to redeem your points or go to your profile.",
         icon: "success",

         buttons: {

           offer: {
            text: "See offers",
            value: "offer",

           },

           dashboard: {
            text: "Profile",
            value: "profile",

           },
         },
       })
       .then((value) => {

        // This only happens after btn clicked
       // REDIRECT AND CONTROLLER ACTION

       // Redirect the user
        if (value == "offers") {

          window.location.href = "../offers";
          }
        else {

          window.location.href = "../users/dashboard"
       }

       });

     });
   });

}

export { bindSweetAlertCheckIn };
