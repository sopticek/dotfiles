#!/usr/bin/perl
use Date::Manip;

$date = `grep "Sync completed" /var/log/emerge.log | tail -n1 | cut -c-10`;
$date = &DateCalc("Jan 1, 1970  00:00:00 GMT",$date);
$date = UnixDate(Date_ConvTZ( $date , 'GMT', 'CEST'), "%d/%m/%y %H:%M");
print "$date";
