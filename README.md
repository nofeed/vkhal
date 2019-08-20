# Vkhal

Utility to help integrate the amazing [Mutt][1]/[NeoMutt][2] with the beautiful calendaring application [Khal][3] 

## Installation

    $ gem install vkhal

## Usage

Vkhal can both display an `ics` file in Mutt and import it in Khal.

In order to display the events inside your emails add these two lines in your `mailcap`

```
text/calendar;      vkhal -s %s; copiousoutput
application/ics;    vkhal -s %s; copiousoutput
```

Then add a macro to import events into Khal:

```
macro attach K \
"\
"<enter-command>unset wait_key<enter>\
<shell-escape>rm -f /tmp/events.ics<enter>\
<save-entry><kill-line>/tmp/events.ics<enter>\
<shell-escape> vkhal -k /tmp/events.ics<enter>\
"
```

## License

The gem is available as open source under the terms of the [Beerware License](https://people.freebsd.org/~phk/).
