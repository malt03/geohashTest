use strict;
use warnings;
use utf8;

use Geohash;
use Geo::Distance::XS;

use Data::Dumper;

my $geohash = Geohash->new;
my $hash = $geohash->encode(35, 140, 6);
# my @hashes = ($geohash->neighbors($hash), $hash);
# print Dumper @hashes;

my ($lats, $lons) = $geohash->decode_to_interval($hash);

my $distance = Geo::Distance->new->distance(
    meter =>
    $lats->[0], $lons->[0] =>
    $lats->[1], $lons->[1]
);

# print $hash. "\n";
# my @hoge =     ($lats->[0], $lons->[0] =>
#     $lats->[1], $lons->[1]);

# print Dumper @hoge;
print $distance . "\n";
