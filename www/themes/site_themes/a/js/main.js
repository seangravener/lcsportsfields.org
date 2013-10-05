jQuery( document ).ready( function($) { 

	$('.flexslider').flexslider({
	   animation: "slide",
	   controlNav: false,
	   pauseOnHover: true,
	   touch: true,
	});

	/*
	 * Mobile Menu
	 */
	var navTopPortable 			= $( ".nav--top-portable" ),
		navPortable 			= $( ".nav--portable" ),
		navMobileMenuSelector 	= $( "#mobile__menu-selector" );

	var isPortable = function () {
		if ( navTopPortable.css( "display" ) === "block" ) {
			console.log('isPortable');
			return true;
		};
	}

	var mobileMenu = function () {

		navPortable.on( "click", "> li > a", function( event ) {
			var $this 					= $(this),
				navDropdownContainer 	= $this.next('.nav--dropdown--menu');

			if ( isPortable() ) {
				navDropdownContainer.toggle();
	
				// prevent default action if portable menu contains children
				if ( navDropdownContainer.length > 0 ) {
					event.preventDefault();
				}
			}

		});

		navMobileMenuSelector.on( "click", function( event ) {
			var $this = $(this);
			$this.parent('li').toggleClass('active');
			navPortable.toggle();
			// console.log('menu click')
			event.preventDefault();
		});

	}

	// go!
	mobileMenu();
	

	/*
	 * Calendar 
	 */

	$calendar = $('#calendar__full');
  if ( $calendar.length ) {
    $calendar.fullCalendar({
      eventSources: [
          {
            url: "https://www.google.com/calendar/feeds/lcsfasoccer%40gmail.com/public/basic",
            className: 'cal--default'
          },
          {
            url: "https://www.google.com/calendar/feeds/mrk0g7pivn1kv3oqkqhr82r4ec%40group.calendar.google.com/public/basic",
            className: 'cal--test'
          }
      ],
      eventClick: function( e ) {
		if (e.url) {
		    window.open(e.url);
		    return false;
		}
	}
    });
  }

});