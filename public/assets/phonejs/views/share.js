MyApp.share = function(params) {
  
	var viewModel = {
        id: params.id,
        cause: params.cause,
        reason: ko.observable(''),

        tweet: "I chime for " + params.cause,

        overlayImg: "views/assets/ChimeOverlay.png"
    };

    return viewModel;
}

var overlayVisible = ko.observable(false);

var showOverlay = function (params) {
 
  $.post( '/causes/' + params.model.id + '/chimes', { reason: params.model.reason(), cause_id: params.model.id } );
  
  overlayVisible(true);
};

var hideOverlay = function () {
    overlayVisible(false);
};

