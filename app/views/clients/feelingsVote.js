window.onload = function() {
  var total_awesome = feelings.filter(function(vote) {
    return vote.awesome == true;
  }.length;
  var total_so_so = feelings.filter(function(vote) {
    return vote.so_so == true;
  }).length;
  var total_creeped_out = feelings.filter(function(vote) {
    return vote.creeped_out == true;
  }).length;
  var total_morally_outraged = feelings.filter(function(vote) {
    return vote.morally_outraged == true;
  }).length;
  var total_hungry = feelings.filter(function(vote) {
    return vote.hungry == true;
  }).length;
  var pollResults = $('<div id="#poll-results"></div>');
  $("#vote-button").click(function(){
    //TODO
  });
}

  $("#poll-responses").prepend(pollResults);
  
