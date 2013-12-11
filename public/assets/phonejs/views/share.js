
MyApp.share = function(params) {

	var viewModel = {
        id: params.id,
        cause: params.cause,
        reason: ko.observable(''),

        tweet: "I chime for " + params.cause,

        overlayImg: "views/assets/ChimeOverlay.png"
    };

    // $.getJSON('http://chimeapp.herokuapp.com/causes/' + params.id).done(function(data) {
    //     viewModel.cause(data.ProductName);
    // });

    return viewModel;
}

var overlayVisible = ko.observable(false);
var showOverlay = function () {
    overlayVisible(true);
};
var hideOverlay = function () {
    overlayVisible(false);
};

