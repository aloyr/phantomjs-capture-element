//var page = new WebPage();
var page = require("webpage").create();

if (phantom.args.length !=3) {
  console.log('Usage: idGetter.js <url> <elementId> <name of png>');
  phantom.exit();
}

console.log('starting');

var address = phantom.args[0];
var elementId = phantom.args[1];
var fileName = phantom.args[2];

page.viewportSize = { width: 1280, height: 1080 }
page.paperSize = { width: 1280, height: 1080 }
page.open( address, function(status) {
  page.includeJs("http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js", function() {

    try {
      console.log('processing closed ' + elementId + ' - ' + fileName);
      var element = page.evaluate(function(elementId){
          return document.getElementById(elementId).parentNode.getBoundingClientRect();
        }, elementId);
      page.clipRect = { 
        top: element.top, 
        left: element.left, 
        width: element.width, 
        height: element.height
      };
      page.render(fileName + '.png');
      // page.render(elementId + '-closed.png');

      // console.log('processing opened ' + elementId);
      // var element = page.evaluate(function(elementId){
      //   // jQuery('.bef-group').click();
      //   // just_wait(2);
      //   // jQuery('.bef-group-items .form-type-bef-checkbox label').click();
      //   // just_wait(5);
      //   jQuery('.bef-group-items').css('display','block');
      //   jQuery('.bef-group').click();
      //     return document.getElementById(elementId).getBoundingClientRect();
      //   }, elementId);
      // page.clipRect = { 
      //   top: element.top, 
      //   left: element.left, 
      //   width: element.width, 
      //   height: element.height
      // };
      // page.render(elementId + '-opened.png');
      console.log('done');
      phantom.exit();
    } catch (e) {
      console.log("error ");
      console.log(JSON.stringify(e));
      console.log(JSON.stringify(phantom.args));
      phantom.exit();
    }
  });
});

function just_wait(s) {
  setTimeout(function() {
    console.log('waiting ' + s + ' seconds');
  });
}
