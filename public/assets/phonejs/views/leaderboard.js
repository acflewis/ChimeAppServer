// MyApp.chimerSet = [
//   {id:1, img:"views/assets/Mosaic_Alaina.jpeg", name:"Alaina", chime_score:30000},
//   {id:2, img:"views/assets/Mosaic_Beyonce.png", name:"Beyonce", chime_score:20000},
//   {id:3, img:"views/assets/MosaicKamilla.jpg", name:"Kamilla", chime_score:10000},
// ];
// 
// function chimer(id, imgUrl, name, chime_score) {
//      this.id = ko.observable(id);
//    this.img = ko.observable(imgUrl);
//    this.name = ko.observable(name);
//    this.chime_score = ko.observable(chime_score);
// }
// 
// MyApp.chimers = function() {
// 
//   var viewModel = {
//       selectedItem: ko.observable(),
//       chimer: MyApp.chimerSet
//    };
// 
//    return viewModel;
// 
// };

MyApp.chimers = function() {

	var viewModel = {
        chimer: new DevExpress.data.DataSource({
            load: function(loadOptions) {
                return $.getJSON('/users');
            },
            map: function(item) {
                return {
                    name: item.name,
                    id: item.id,
                    chimeScore: item.clout,
                    imageUrl: item.image_url
                };
            }
        })
    };
    return viewModel;
};
