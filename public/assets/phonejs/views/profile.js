﻿MyApp.profile = function(params) {


  var viewModel = {
        dataSource: new DevExpress.data.DataSource({
            load: function(loadOptions) {
              
                return $.getJSON('http://chimeapp.herokuapp.com/users/2');
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
