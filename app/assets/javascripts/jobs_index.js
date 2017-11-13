document.addEventListener("DOMContentLoaded",function(){
// document.addEventListener("turbolinks:load",function(){
  // table is given id #jobs_style
  document.getElementById("jobs_style").addEventListener("click",function(event){
    let modal = document.getElementById('show_job');
    modal.style.display = 'block';
    if (event.target.classList.contains('show_job')) {
      event.preventDefault();

      axios.get(`${event.target.getAttribute('href')}.json`).then(function(response){
        console.log(response);

        modal.querySelector(".modal-body").innerHTML = `
        <div class="origin_lat">${response.data.origin_lat}</div>
        <div class="origin_lng">${response.data.origin_lng}</div>
        <div class="dest_lat">${response.data.dest_lat}</div>
        <div class="dest_lng">${response.data.dest_lng}</div>
        <div class="origin">${response.data.origin}</div>
        <div class="destination">${response.data.destination}</div>
        `;
          // let field = "";
          // switch(index) {
          //   case 0:
          //     field = 'origin_lat';
          //     break;
          //   case 1:
          //     field = 'origin_lng';
          //     break;
          //   case 2:
          //     field = 'dest_lat';
          //     break;
          // }
          // current.innerText = response.data[field];
      });
    }
  });
});
