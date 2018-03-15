import swal from 'sweetalert';

function bindSweetAlertReview() {

  const reviews = document.querySelectorAll('.reviews-button');

   reviews.forEach((review) => {
     checkin.addEventListener('click', (e) => {
       // e.preventDefault();
       swal({
         title: "Oops!",
         text: "Please sign up or log in to leave a review.",

         buttons: {
           ok: {
            text: "Ok",
            value: "signup",

           },
         },
       })
       .then((value) => {

        // This only happens after btn clicked
       // REDIRECT AND CONTROLLER ACTION

       // Redirect the user
        if (value == "signup") {

          window.location.href = "../users/sign_up";
          }
        else {

          window.location.href = window.location.href
       }

       });

     });
   });

}

export { bindSweetAlertReview };
