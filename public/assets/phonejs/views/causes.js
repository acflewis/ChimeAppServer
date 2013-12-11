var calculateTheme = function(category) {
    switch(category) {
        case 'Education':
            return '#F7A859';
        case 'Justice':
            return '#FCBB45';
        default:
            return '#EA4884';
    }
};

MyApp.causes = function() {

	var viewModel = {
        dataSource: new DevExpress.data.DataSource({
            load: function(loadOptions) {
                return $.getJSON('http://chimeapp.herokuapp.com/causes');
            },
            map: function(item) {
                return {
                    title: item.title,
                    id: item.id,
                    category: item.category
                };
            }
        })
    };
    return viewModel;
};

