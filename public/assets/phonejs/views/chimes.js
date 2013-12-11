// MyApp.cause = {title: 'Girls education in Afghanistan', category: "education", chime_reason: "because my edcation allows me to", link: "www.google.com" }, { title: 'The unacceptability of violenece against women', category: "justice", chime_reason: "because", link: "www.google.com" }
// MyApp.causeChimes = [
//   {id:1, reason:"Make a difference on my community", userId:123, heightRatio: 2},
//   {id:2, reason:"Have a better future", userId:567, heightRatio: 3},
//   {id:3, reason:"Follow my dreams", userId:890, widthRatio:2},
//   {id:1, reason:"Make a difference on my community", userId:234},
//   {id:2, reason:"Have a better future", userId:456, widthRatio: 3},
//   {id:3, reason:"Follow my dreams", userId:789, widthRatio:2}
// ];

MyApp.chimes = function(params) {

	var viewModel = {
        dataSource: new DevExpress.data.DataSource({
            load: function(loadOptions) {
                return $.getJSON('http://chimeapp.herokuapp.com/causes/' + params.id + '/chimes');
            },
            map: function(item) {
                return {
                    userImg:  item.user.image_url,
                    reason: item.reason.replace("because", ""),
                    user: item.user.name,
                    chime_score: item.user.clout
                };
            }
        }),
        title: ko.observable(params.cause)

    };
    return viewModel;
};
