var winner_ob;
var looser_obj;

$(document).on("click",".show_vote",function() {
    $(".show_vote").prop('disabled', true);
    $(this).html("Winner");
    $(this).addClass("btn-success");

    winner_id = $(this).attr("data-show-id");
    var looser_id=""
    winner_obj = this;
    $('.show_vote').each(function() {
        player_id = $(this).attr("data-show-id");
        if (winner_id != player_id){
            looser_id = player_id;
            $(this).addClass("btn-danger");
            $(this).html("Looser");
            looser_obj=this;
        }
    });
    
    var settings = { 
        "url": "/vote",
        "method": "POST",
        "timeout": 0,
        "headers": {
            "Content-Type": "application/json"
        },
        "data": JSON.stringify({
            "winner_id": winner_id,
            "looser_id": looser_id
        }),
    };
    $.ajax(settings).done(function (response) {
        console.log(response);
        $(winner_obj).parent().parent().find(".show_elo").html(response.winner_elo);
        $(looser_obj).parent().parent().find(".show_elo").html(response.losser_elo);

        setTimeout(get_players, 3000);
        // get_players()

        // update_show_list();
    });
});

function get_players(){
    var settings = {
        "url": "/new_players",
        "method": "POST",
        "timeout": 0,
      };
      
      $.ajax(settings).done(function (response) {
        shows_list = response.selected_players;
        console.log(shows_list);
        $("#selected_list").empty();

        data = show_next(shows_list[0])

        $("#selected_list").append(data);

        data = show_next(shows_list[1])
        $("#selected_list").append(data);

      });
}
function show_next(show){
    data = `<div class="movie-card">
    <div class="movie-header bladeRunner2049">
       <div class="header-icon-container">
        <img src="/static/posters/${show.show_image}" "="" style="width:100%;height:350px">
       </div>
    </div>
    <!--movie-header-->
    <div class="movie-content">
       <div class="movie-content-header">
          <a href="#">
             <h3 class="movie-title">${show.show_name}</h3>
          </a>
          <div class="imax-logo show_elo">
          ${show.rank}
          </div>
       </div>
       <div class="movie-info">
        <button class="btn-primary btn-block show_vote" data-show-id="${show.show_id}">Vote</button>
       </div>
    </div>
    <!--movie-content-->
 </div>`
 return data
}

$(document).on("click","#replay",function() {
window.location.reload();
});

function update_show_list(){
    var settings = {
        "url": "/get_shows",
        "method": "POST",
        "timeout": 0,
      };
      
      $.ajax(settings).done(function (response) {
        shows_list = response.shows;
        $(".show_card").remove();

        for (var key in shows_list) {
            // console.log(shows_list[key]);
            card = get_show_card(shows_list[key]);
            $('container').slice(2).remove();
            $(".container").append(card)
          }

      });
}




function get_show_card(show){
var data= `<div class="movie-card show_card">
            <div class="movie-header bladeRunner2049">
               <div class="header-icon-container">
                <img src="/static/posters/${show.show_image}" style="width:100%;height:350px"/>
               </div>
            </div>
            <!--movie-header-->
            <div class="movie-content">
               <div class="movie-content-header">
                  <a href="#">
                     <h3 class="movie-title">${show.show_name}</h3>
                  </a>
                  <div class="imax-logo show_elo">
                    ${show.rank}
                  </div>
               </div>
               <div class="movie-info">
                <button class="btn-primary btn-block" style="display:none">Vote</button>
               </div>
            </div>
            <!--movie-content-->
         </div>
         <!--movie-card-->
         <p></p>`
    return data;
}