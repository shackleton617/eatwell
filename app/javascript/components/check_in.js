import swal from 'sweetalert';

function bindSweetAlertCheckIn() {

  const checkins = document.querySelectorAll('.checkin-alert');

   checkins.forEach((checkin) => {
     redeem.addEventListener('click', (e) => {
       // e.preventDefault();
       swal({
         title: "Thank you!",
         text: "See offers to redeem your points.",
         icon: "success"
       },
       )
       .then(() => {

        // This only happens after btn clicked
       // REDIRECT AND CONTROLLER ACTION

       // Redirect the user
        window.location.href = "offers";

       });

     });
   });

}

export { bindSweetAlertCheckIn };
