# Vkhal

Utility to help integrate the amazing [Mutt][1]/[NeoMutt][2] with the beautiful calendaring application [Khal][3] 

## Installation

    $ gem install vkhal

## Usage


text/calendar;      ~/Projects/vkhal/bin/vkhal -s %s; copiousoutput
application/ics;    ~/Projects/vkhal/bin/vkhal -s %s; copiousoutput


    "\
<enter-command>unset wait_key<enter>\
<shell-escape>rm -f /tmp/events.ics<enter>\
<save-entry><kill-line>/tmp/events.ics<enter>\
<shell-escape> ~/Projects/vkhal/bin/vkhal -k /tmp/events.ics<enter>\
"

## License

The gem is available as open source under the terms of the [Beerware License](https://people.freebsd.org/~phk/).
