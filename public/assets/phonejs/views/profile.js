MyApp.profile = function(params) {


  var viewModel = {
        dataSource: new DevExpress.data.DataSource({
            load: function(loadOptions) {
              
                return $.getJSON('/users/' + params.id);
            },
            
            map: function(item) {
                return {
                    reason: item.reason,
                    cause: item.cause.title,
                    category: item.cause.category
                };
            }
        }),
 

    };

    
    return viewModel;
};
