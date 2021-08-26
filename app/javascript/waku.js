$("#like-buttons").html("<%= j(render partial: 'like', locals: { tweets: @tweets, likes: @likes, like: @like}) %>")




//function like_function(button, heart, heart_count, tweet_id){
 // var _cnt = parseInt( heart_count.text() );
 // if ( !( _cnt > 0 ) ) { _cnt = 0; }
 // if (button.hasClass("decrement")){
  //  $.ajax({
  //    url: "/tweets/" + tweet_id + "/unlike",
  //    type: "delete",
  //    data: {tweet_id: tweet_id}
  //  })
  //  .done(function(data){
  //    button.removeClass("decrement").addClass("increament")
  //    heart.attr("src", "/assets/heart.png")
  //    heart_count.text( ++_cnt )
   // });
  //  return false;
 // }else{
 //   $.ajax({
  //    url: "/tweets/" + tweet_id + "/like",
  //    type: "tweet",
  //    data: {tweet_id: tweet_id}
  //  })
 //   .done(function(data){
  //    button.removeClass("increment").addClass("decrement")
  //    heart.attr("src", "/assets/heart.png")
  //    heart_count.text( --_cnt )
 //   });
 //   return false;
//  }
// }