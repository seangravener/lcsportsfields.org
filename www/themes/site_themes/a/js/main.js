jQuery( document ).ready( function($) { 

	$('.flexslider').flexslider({
	   animation: "slide",
	   controlNav: false,
	   // controlNav: "thumbnails",
	   // controlsContainer: ".flex-container",
	   pauseOnHover: true,
	   touch: true,
	});

	var navTopPortable = $( ".nav--top-portable" ),
		navPortable = $( ".nav--portable" ),
		navMobileMenuSelector = $("#mobile__menu-selector");

	

	var isPortable = function () {
		if ( navTopPortable.css( "display" ) === "block" ) {
			return true;
		};
	}

	var mobileMenu = function () {
		if ( isPortable() ) {

			console.log('moblemen');
			// var navPortable = $(".nav--portable");

			navPortable.on( "click", "> li > a", function( event ) {
				var $this = $(this),
					navDropdownContainer = $this.next('.nav--dropdown--menu');

				navDropdownContainer.toggle();
		
				// prevent default action if contains children
				if ( navDropdownContainer.length > 0 ) {
					event.preventDefault();
				}

			});

		} else {
			navPortable.off( "click", "**" );
		}


		navMobileMenuSelector.on( "click", function( event ) {
			var $this = $(this);

			$this.parent('li').toggleClass('active');

			navPortable.toggle();

			event.preventDefault();

		});

		
	}

	// mobile nav in use on page load?
		mobileMenu();

	// recheck if viewport is resized
	$( window ).resize( function() {
			mobileMenu();
	});

	
});