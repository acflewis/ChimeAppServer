MyApp.home = function (params) {
    var data = ko.observableArray();
    $.getJSON("/static_pages/index", function(response){
        data(response);
    });
    var viewModel = {
	data: data
    };

    return viewModel;
};