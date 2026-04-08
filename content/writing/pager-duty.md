---
type: story
title: Pager Duty
author: Tomash
date: 2019-10-28
other_url: https://archiveofourown.org/works/21207692
summary: Tomash gets paged at a rather early hour.
---
<div class="authors-note">
The Protectors of the Plot Continuum was created by Jay and Acacia and is used with Permission. Thank you to Delta Juliette and Granz for beta reading.
</div>

``` prettyprint
2017-10-13 06:19:00 [ecosystems3.rack5.qq45ld09β-tl1.routing] ttyUSB2: NO CARRIER
2017-10-13 06:19:00 [cisco2.rack2.rr12zh34ε-tl1.routing] eth3: link down
[10385 similar messages elided]

2017-10-13 06:19:15 [ecosystems3.rack5.qq45ld09α-tl1.routing] heartbeat failed: no route to host vault-tec1.rack1.qa01aa04ξ-tl1.routing
2017-10-13 06:19:19 [cisco2.rack2.rr12zh34ε-tl1.routing] heartbeat failed: no route to host console01.rc112358.dms
[22287 similar messages elided]
2017-10-13 06:19:59 [monitoring13.dosat] Region qa01 probably down - sev2 ticket #23499101866 logged
```

\[BEEEEEEEEEEEEP\]

Technician Tomash was startled awake by the console. He groped around
for his glasses, put them on, and then took a look at the time.

“It’s six in the morning, dammit.” he grumbled.

Tomash walked over to his console and logged in to DoSAT's systems. He
took a quick glance at the summary of why he'd been paged, and then
wandered off to make some tea. He was just awake enough to realize he
needed to be more awake than that, and he knew the tea would help.

As the water started boiling, the situation quietly got worse:\
`[630599 messages elided]`\
`2017-10-13 06:20:30 [neonet1.rack17.vj36aa07ν-tl1.routing] nlan1: link down (warp fluctuations)`\
`2017-10-13 06:20:31 [tuberosum55.box2b.בc23ln43λ-tl1.routing] prot16: link down`\
`[298232 similar messages elided]`\
`2017-10-13 06:20:55 [console02.rc3133735.dosat] heartbeat: no route to host monitoring.dosat`\
`2017-10-13 06:21:01 [neonet1.rack6.vj36aa07ν-tl1.routing] stats: no route to host console02.lab.dosat`\
`[408214 similar messages elided]`

Tomash went back over to the console and looked at the alert and the
first few log entries, which were showing a lot of internal network
connectivity problems starting a minute or two ago. “OK, zone outage in
qa01, let's see where…”

``` prettyprint
tomash@rc2718282 ~ 06:22 $ server-map qa01
Fatal error: Cannot look up current network and room layout: no route to host
```

“The heck? That's weird.” He tried the command again, since this sort of
thing was intermittent sometimes.

``` prettyprint
tomash@rc2718282 ~ 06:22 $ server-map qa01
Fatal error: Cannot look up current network and room layout: no route to host
```

Tomash stared at the screen in confusion. "Eh?" he said, rubbing his
eyes.

``` prettyprint
2017-10-13 06:23:23 [aperture4.control.dosat] External corruption on link fib3, preemptive halt
2017-10-13 06:23:24 [monitoring08.dosat] Kernel panic: Core nyph14tnyd,eucrkaogutns1\2443h4prs^X@
[10 similar messages elided]
```

"Maybe something got unplugged?" he said to himself. He leaned down to
make sure his console’s network cable was still plugged in. This was a
fortunate decision, as, about 30 seconds after the second lookup command
had failed, the console’s screen and keyboard started glowing eerily
green. The console speakers also let out a burst of noise as the screen
began to glitch out.

Tomash, satisfied that he did in fact have his network cable plugged in,
got out from under the console just as everything got spooky. "Well, so
that's in— shit shit *shit!*"

The kettle clicked off, but Tomash *really* didn't need tea anymore.

The talk he'd gotten about infovores soon after he'd joined the
department jumped into his head. He started listing off the signs. "Runs
through networks, everything goes down, glitches, maybe glowing if —
fuck," he concluded. Though the problem was dangerous, especially since
stuff like this tended to spread fast, the immediate solution was easy.
Kill the affected network and hope it leaves through the plothole it
used to get in, and get the Weeds if it didn’t.

Tomash grabbed his badge and phone from his nightstand and ran like hell
— no shoes, no watch, no tea, nothing else. Something chewing through
HQ's network was *not* the sort of situation where you took the time to
get ready.

Headquarters, fortunately, was being extremely cooperative, and he made
it to an entrance in a bit under a minute.

As Tomash was running for the routers, the defenses in HQ’s network
realized what was going on.\
`2017-10-13 06:23:45 [watchtower.dosat] Corruption detected (main routing/data), creating airgap`

*THUNK. CLACK CLACK. clickclickclickclickCHUNK. THWACK. Whump.*

HQ’s networks split apart. Critical computer systems, such as those in
Medical, FicPsych, and Security, were physically disconnected from the
rest of HQ, and linked to each other only by a small collection of
routers near the Board’s offices. External connections that weren’t
isolated, critical, or unreachable were mechanically disconnected, as
were the few cables in main routing attached to equipment that could
still be communicated with. A loud *CLANK* near the main DoSAT lab
isolated the racks of backup drives. The people working the night shift,
as well as the lab's morning people (who, contrary to rumor, did, in
fact, exist) were rather startled by all this and started trying to find
out what was going on.

While the airgap process finished up, a heavily breathing technician
charged into a cavern full of routers, servers, and even more unusual
equipment. Much of this hardware was giving off the same green glow that
Tomash had seen on his console. To make matters worse, the glow was
spreading.

Tomash turned his attention to the panel by the door, which had two red
buttons on it, one quite large and a significantly smaller one about the
size of a watch battery. Both were surrounded by plastic covers so they
wouldn’t be pressed accidentally. The larger one, labelled “area TH
shutdown”, would turn off the portion of the routing infrastructure
Tomash stood near. The smaller button was the “kill everything” switch,
and would do just that.

Tomash stared at the state of the room and then looked over at the
panel. "Everything?" he asked himself, then he looked back up again.
This really didn't look good.

He took a deep breath and decided on what needed to be done.
"Everything." He made sure he was going to press the right thing, opened
up the cover, and slammed the smaller red switch.

``` prettyprint
2017-10-13 06:24:32 [panel.th02-270eneθ.compute] Emergency datacenter shutdown logged
```

*CLANG. THUD.* The room echoed with the sound of electricity being cut
off.

Then, the power was gone.

The blinking lights on the machines turned off.

The box of potatoes half a mile down the hall to the left stopped
vibrating.

Everything was quiet.

The glowing started receding out of the hardware. There were no more
machines to take over; no more bits to eat.

Tomash went through the room to a hallway so he could get to the right
part of the datacenter. He looked at the map posted by the exit to th02
and found out where qa01 should be, since that’s where all that had
started. He then started walking his way down the emergency-lit hall,
using a phone flashlight to check the door signs. Unfortunately, the
diagrams he was using were somewhat theoretical, since a few things had
been rearranged since they were last updated and HQ was getting back to
its usual self. Now that the immediate threat was dealt with, looking
for a large cavern full of equipment by following directions was not the
best strategy for finding it.

After a few increasingly frustrating minutes, Tomash made it to his
destination. Region qa01 was a cavern holding a grid of metal pens
filled with long rows of computers, along with the associated cooling
equipment, power cabling, and other infrastructure. Ordinarily, it would
look like a vast army of metal towers assembled to march stretching out
into the distance, though, due to the wide variety of hardware in use,
were nowhere as sleek as they should've been.

With only the emergency lights on, however, qa01 was a huge spooky cave.
The cables and atypically-shaped hardware jutting out of racks cast
long, spidery shadows on the ground. Even the rather tidy cable runs
that disappeared into the ceiling or under the floor gave the impression
that there were thick snakes hovering overhead as Tomash looked around.

As Tomash walked in and habitually grabbed some earplugs, the echo of
his footsteps surprised him. Usually, there were enough fans,
generators, and other noisy objects to muffle the sound of a tech
walking around. Everything shutting down let the natural acoustics of a
big room full of objects for sound to bounce off of take over, and it
made Tomash pause.

He regained his composure and walked over to pen aa, which was,
conveniently, nearest to his door, and let himself in. “Ok, the first
thing that showed as down was in 03 or so, now let’s see…” He paced up
and down the row of unusually dark and quiet racks, looking for the
problem. “OK, so none of this stuff is glowy. Where the heck could that
have been coming from?”

He started walking around more slowly and checking the occasional label.
While hostnames were almost always accurate down to the pen, and usually
the row (not doing this tended to lead to angry coworkers threatening
you once they'd had to find the machine that wasn't where it should be),
occasionally things weren't quite where they claimed to be.

As he made this next trip down the aisle, he saw a faint blue shimmer
from a cable run in the next row over. "*There* it is." He went back out
of the pen and grabbed the CAD by the door, then went over to the portal
in aa04. He aimed the CAD at the plothole intersecting the cables, and
pushed the button.

``` prettyprint
[Natural portal to Laundryverse. Close? Y/n]
```

The portal closed, and the faint hissing and glowing that filtered
through from the other side disappeared.

"Got it!" Tomash shouted, throwing his hands up in the air.

Then, his glee at solving the problem ran right into reality. "I hope
the information-eating eldritch thingy just chased the bandwidth on the
network and stayed away from data, so we don't have to restore from
backup."

"And now we have to get all this up again…." He sighed and started out
for the main DoSAT labs.

Once he’d gotten there, he went through the Makes-Things Memorial Blast
Doors (which were still named that even though Makes-Things had always
been very alive).

In the lab, there were various reactions to the outage. Some people
weren't even there, because they didn't work on data or networking and
everything being down was as good of an excuse as any for a day off.
Other people were being slightly more constructive, that is, they were
standing around chatting, making coffee, playing solitaire, and
otherwise finding ways to kill time until the problem was more solvable.

A smaller group found that they were actually more productive when the
network was gone. There were all sorts of things that should have been
done quite a while ago, like documenting code, that always got pushed
back by more urgent tasks or were boring enough that technicians used
the vast array of procrastination methods reachable over the network to
avoid them. Now that there wasn't much better to do, the department took
another lurch towards best practices.

Tomash called out, “Anyone know how to restart the data center? I got
the scary green stuff out, but I don't know how to turn things back on.”

“They’re on the wiki!” called a nearby tech. A moment later, she’d
remembered what was going on and added “It’s under that desk over
there,” pointing into the lab.

Tomash went over to the wiki server, plugged in a nearby laptop so he
could get to the thing, looked up the directions. The instructions were
*long*, including straightforward things like "re-close the breakers",
rather unusual instructions like "replace that one cable that gets cut
off with explosives (Note: the spares are in a drawer by the laser
cutter)", and rather incomprehensible steps such as "reflobnicate the
swozinator in lh45gq84" (which someone had forgotten to list more
details for). Fortunately, after the first few steps, the list could be
split up between the many techs who were waiting around for the outage
to be over.

The first thing Tomash did was to give the word that it was OK to switch
to the failover data center. This was something he needed to do
personally, unless he was dead or otherwise unavailable, in which case
the job fell to Makes-Things or a few other senior people. He told the
tech who'd given him directions to the wiki that the portal all the
nasty bit-eaters had come through was closed, adding that he hoped
nothing else was running around. She then messaged the fellow who'd run
to the `data2` switch to let vem know it was safe to pull it.

`data2` was HQ's larger backup network. It made sure that HQ's typical
business could generally go on—agents could still get missions and file
reports, Intel could still look through fics, the chatrooms worked
again, and so on. The network also contained one set of HQ's backup
servers for important data, which was kept reasonably current, and not
much work had been lost last time an outage happened (at least according
to the wiki).

The network, however, had very few links to the outside world. The few
connections that existed, like to the World One internet, were both
technically restricted and, at least in theory, only available to
departments that might need them in an emergency. However, the whitelist
for this connection tracked consoles, and almost no one remembered to
de-list a console when it wasn't used by an approved department anymore,
so a large portion of HQ's agents got their internet back as soon as the
switch was pulled.

The first 90% of the restoration work took about an hour, which Tomash
spent coordinating people to make sure everything got done and finally
getting tea.The power was turned on to the data center (though even this
wasn't easy, since there wasn't just one big off switch, and one breaker
hadn't even been added to the big list). A group of supervisory machines
had to be turned on by hand, but once that was done the process of
bringing the rest of the systems and network online was mostly
automatic. Mostly. External network connections, which had been
physically disconnected during the crisis, needed to be put back
together and, in many cases, their accompanying SEP field generators had
to be spun back up first (It wouldn't do for anyone but the conspiracy
theorists to actually think about how much a tiny French island used the
internet, for example).

As the work began, the lab returned to a more typical level of activity.
People were darting around between all the phases of checking an item
off the list. They'd go find out about a task that needed to be done and
then head off to their computers to check out how they should do it (and
where any relevant materials were supposed to be). More often than they
should've needed to, though, they'd need to wander the lab to learn what
*actually* needed to happen from whoever had last touched that system
and forgotten to update the instructions. Overall, though, the
department maintained a typical level of swearing, coffee-drinking, and
excited "I figured it out" noises.

Somewhere along the line, a reminder to make more mult-clocks was posted
near the Hornbeam's office, since there were definitely not enough for
the process of running around and matching up time between HQ, the
Worlds, and other bits of HQ to go smoothly.

`data2` was returned to being a backup system near the end of the hour,
since `routing` was officially back online enough then.

The second 90% of the work took until the early afternoon, much to the
annoyance of an increasingly tired Tomash. Shutting down HQ's main
network in the space of a few seconds was not a pleasant process for the
machines involved. Some machines had ended up in corrupt states and
needed their operating systems reinstalled. Others were unhappy about
the situation, and needed a tech-priest out to perform some convoluted
ritual of penance or maybe just a hug from one of the digitally-native
agents. Stale data led to two pairs of agents getting assigned the same
mission. At one point, some intern had to run down to the store for
potatoes—bugs had gotten into some of the computational ones.

Throughout all this, a steady stream of agents walked (or, more likely,
stormed or stomped) into the lab to complain about anything from how
this was making them lose massive piles of money on the Ferengi stock
exchange to their download of Doom not going through. After the incident
with the tape recorder and the dry ice, DIA sent a Sith Lady to keep
order, and a Jedi to keep an eye on the Sith.

Once everything was pretty much back up and running, Tomash went back to
bed, yawning frequently along the way, since he really hadn’t gotten
enough sleep the night before and his two mugs of tea had barely done
anything for that problem.

He’d just about managed to settle into a nap when

``` prettyprint
2017-10-13 13:13:13 [aperture4.control.dosat]  Emergency stop. In-progress canon integration detected.
2017-10-13 13:13:16 [monitoring01.dosat] Control AI unresponsive - sev3 ticket #23499124634 logged
```

\[BEEEEEEEEEEEEP\]
