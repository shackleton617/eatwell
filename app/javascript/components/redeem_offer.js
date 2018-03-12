import swal from 'sweetalert';

function bindSweetAlertRedeemOffer() {

  const redeems = document.querySelectorAll('.redeem-alert');

   redeems.forEach((redeem) => {
     redeem.addEventListener('click', (e) => {
       // e.preventDefault();
       swal({
         title: "Enjoy your offer!",
         text: "Check your email for details.",
         icon: "success"
       },
       )
       .then(() => {

        // This only happens after btn clicked
       // REDIRECT AND CONTROLLER ACTION

       // Redirect the user
        window.location.href = "users/dashboard";

       });

     });
   });

}

export { bindSweetAlertRedeemOffer };
