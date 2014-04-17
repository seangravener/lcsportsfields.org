jQuery(document).ready( function($) { 

  $('.flexslider').flexslider({
     animation: "slide",
     controlNav: false,
     pauseOnHover: true,
     touch: true,
  });

  /*
   * Mobile Menu
   */
  var navTopPortable          = $( ".nav--top-portable" ),
      navPortable             = $( ".nav--portable" ),
      navMobileMenuSelector   = $( "#mobile__menu-selector" );

  var isPortable = function () {
    if ( navTopPortable.css( "display" ) === "block" ) {
      console.log('isPortable');
      return true;
    };
  }

  function mobileMenu() {

    navPortable.on( "click", "> li > a", function( event ) {
      var $this           = $(this),
        navDropdownContainer  = $this.next('.nav--dropdown--menu');

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

  mobileMenu();
  
  /*
   * Calendar 
   */

  var $calendar = $('#calendar__full');

  if ( $calendar.length ) {
    
    $calendar.fullCalendar({
      eventSources: [
          {
            url: "https://www.google.com/calendar/feeds/pojjg2ghjl8oge4v5p1m6e8npo%40group.calendar.google.com/public/basic",
            className: 'cal--field-schedule'
          },
          {
            url: "https://www.google.com/calendar/feeds/5tdpvp6semjdjvgctgrtd8otcg%40group.calendar.google.com/public/basic",
            className: 'cal--event-schedule'
          }
      ],
      eventClick: function( e ) {
        if (e.url) {
          window.open(e.url);
          return false;
        }
      }
    });

  };

  /**/
 
  function listGcalEvents( url ) {

    var $template  = $('#gcal__event-list-template'),
        $eventList = $('#gcal__event-list > ul');

    $.ajax({
      type: 'GET',
      url: url + '&alt=json-in-script',
      dataType: 'jsonp',
      success: function( data ) {

        var entries = data.feed.entry;

        if ( entries ) {

          // clear
          $eventList.html('');

          $.each(entries, function( i, item ) {

           var gcalDate = new Date( item['gd$when'][0].startTime );

            var html   = $template.html(),
                date   = $.formatDateTime('DD, MM d, yy', new Date( item['gd$when'][0].startTime ) ),
                start  = $.formatDateTime('g:ii a', new Date( item['gd$when'][0].startTime )),
                end    = $.formatDateTime('g:ii a', new Date( item['gd$when'][0].endTime )),
                tokens = {
                  "event_title" : item.title.$t,
                  "event_date"  : date,
                  "event_start" : (start != '12:00 AM') ? start + ' to ': '',
                  "event_end"   : (end != '12:00 AM') ? end : 'All Day',
                  "event_link"  : item['link'][0].href,
                  "event_description": item['content']['$t'],
                  "event_location" : item['gd$where'][0].valueString
                };

            for ( token in tokens ) {

              var key   = '{{' + token + '}}',
                  value = tokens[ token ];

              html = html.replace( key , value );

            }

            $eventList.append( html );

          });

        }

        else {
          // $eventList
        }

      }

    });

  };

  listGcalEvents( 'https://www.google.com/calendar/feeds/5tdpvp6semjdjvgctgrtd8otcg%40group.calendar.google.com/public/full?orderby=starttime&sortorder=ascending&futureevents=true' );

});