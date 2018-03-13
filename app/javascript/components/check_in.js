import swal from 'sweetalert';

function bindSweetAlertCheckIn() {

  const checkins = document.querySelectorAll('.checkin-alert');

   checkins.forEach((checkin) => {
     checkin.addEventListener('click', (e) => {
       // e.preventDefault();
       swal({
         title: "Thank you!",
         text: "See offers to redeem your points.",
         // icon: "success"
         buttons {
          offer: "See offers",
          dash: "Dashboard",

         },
       },
       )
       .then(() => {

        // This only happens after btn clicked
       // REDIRECT AND CONTROLLER ACTION

       // Redirect the user
        case "offer":
          window.location.href = "offers";

        case "dash":
          window.location.href = "users/dashboard"

       });

     });
   });

}

export { bindSweetAlertCheckIn };
