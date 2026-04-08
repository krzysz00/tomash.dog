#!/usr/bin/env perl
# Silly little script, GPLv3'd unlike the CC nature of the site itself,
# no warranty etc. (Krzysztof Drewniak)

use strict;
use warnings;
use 5.38.0;

# Takes pandoc's html-to-markdown output from an AO3 fic and cleans it up

my $state = "header";
my $title = "";
my $other_url = "";
my $date = "";
my $summary = "";

print "---\ntype: story\n";
while (<>) {
    chomp;
    if ($state eq "header" && /^<([^>]+)>.$/) {
        $other_url = $1;
        next;
    }
    if ($state eq "header" && /Published: ([0-9-]+)/) {
        $date = $1;
        next;
    }
    if ($state eq "header" && /^#\s+(.*)$/) {
        $title = $1;
        $state = "pre-summary1";
        next;
    }

    if ($state eq "pre-summary1" && /^\s*Summary\s*$/) {
        $state = "pre-summary2";
        next;
    }
    if ($state eq "pre-summary2") {
        $state = "summary";
        next;
    }
    if ($state eq "summary") {
        if (/^> (.*)$/) {
            $summary = $summary . " " . $1;
            next;
        } else {
            print "title: $title\nauthor: Tomash\ndate: $date\nother_url: $other_url\nsummary:$summary\n---\n";
            $state = "pre-body";
            next;
        }
    }

    if ($state eq "pre-body" && /^::: userstuff\d?$/) {
        $state = "body";
        next;
    }

    if ($state eq "body") {
        if (/^:::$/) {
            $state = "post-body";
            next;
        }
        s/\\'/'/g;
        s/\\"/"/g;
        s/\\\.\.\./.../g;
        print;
        print "\n";
    }
}
