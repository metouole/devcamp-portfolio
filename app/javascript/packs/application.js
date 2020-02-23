// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
require("jquery-ui")
import './bootstrap_custom.js'
import "cocoon"
import './alerts.js'





var ready, set_positions;

set_positions = function(){
    // loop through and give each task a data-pos
    // attribute that holds its position in the DOM
    $('.card').each(function(i){
        $(this).attr("data-pos",i+1);
    });
}

ready = function(){

	//call set_positions function
	set_positions();


  	$('.sortable').sortable();

  	// after the order changes
    $('.sortable').sortable().bind('sortupdate', function(e, ui) {
        // array to store new order
        var updated_order = [];
        // set the updated positions
        set_positions();

        // populate the updated_order array with the new task positions
        $('.card').each(function(i){
            updated_order.push({ id: $(this).data("id"), position: i+1 });
        });

        // send the updated order via ajax
        $.ajax({
            type: "PUT",
            url: '/portfolios/sort',
            data: { order: updated_order }
        });
    });

};


$(document).ready(ready);
/**
 * if using turbolinks
 */
$(document).on('page:load', ready);
//= require jquery
//= require jquery3
//= require jquery-ui/widgets/sortable
//= require rails_sortable
//= require bootstrap-sprockets
//= require_tree . # will add html.sortable

// Bulletins Drag & Drop Sortable






// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
