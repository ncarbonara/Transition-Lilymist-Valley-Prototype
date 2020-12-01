// Ch 4
// Carried variables from previous chapters - {player_name}, {company_name}, {job_name}
// Declared here for the sake of drafting
//
// STILL NEEDS: WorkB, WorkC, jobScore counter, better jobScore evaluation @ WorkA422

VAR player_name = "Alex"
VAR company_name = "Lilymist Hotel"
VAR job_name = "Pool Receptionist"

VAR isLate = false
VAR jobScore = 50

// CHANGE THIS TO TEST A SECTION; DEFAULT IS Prep01
->Prep01

=== Prep01 ===
<i>You wake up early. You had a dream last night thinking about your new job at the {company_name}. As it fades from memory, you head downstairs. You hear the news playing on TV. Must be Uncle Scott. Indeed, his voice reaches you from across the house:</i>

Is that you, {player_name}? Come on over and join me on the couch here.

#SFX: Rooster

*[(CONTINUE)]
    <i>You make your way over and your body sinks into the couch. You know by now that Uncle Scott likes to have the morning news on TV while Aunt Tilly wakes up early to work in the yard. Uncle Scott yawns and asks you:</i>
    
    So, are you excited for your new job at the {company_name}?
    
    **[I think so.]
        ->Prep01a
    **[Where's Stew?]
        Oh, he's just outside with your aunt. He likes to look for things while she does her morning work. Gets him out. Both he and I need our exercise on our days off.
        
        Too bad I love sitting on this couch instead of running around like him!
        ***[(CONTINUE)]
            ->Prep02
    **[Meh.]
        ->Prep01a

=== Prep01a ===
You'll do a great job. Remember to focus on your abilities, not your disabilities.
        
One of my abilities is sitting lazy on this couch instead of running around and getting exercise on my day off like Stew does!
*[(CONTINUE)]
    ->Prep02

=== Prep02 ===
Speaking of running around, it's good to see you getting familiar with the town. 

Your Aunt won't be driving you to work, though. You'll take the bus, like I do. Lucky for you, there's a bus stop just a short walk from our house that'll take you to most places in the city. 

I take it myself, but much later in the day.

*[(CONTINUE)]
    Anyway, got you a bus pass for the summer. It'll take you to any stops around town. Call it a celebration gift.
    
    **[Thanks.]
        Don't mention it.
            ->Prep03
    **[I don't know what to say.]
        Don't mention it.
            ->Prep03
    **[Do I have to take the bus?]
        I mean, you could walk for an hour or two to work. Assuming you don't want that.
            ->Prep03
        
=== Prep03 ===
<i>Uncle Scott hands you a bus pass card. You put it in your wallet. Uncle Scott continues:</i>

We're lucky. Buses drive by every fifteen minutes in the morning. So if you miss one, all you have to do is wait. We'll take you on a bus ride to the {company_name} today, just so you can get a feel for things.

*[(CONTINUE)]
    <i>After breakfast, you, your aunt, and your uncle, head out of the house and down the road. After just about five minutes of walking, you make it to a bus stop. Aunt Tilly, whose voice is directed towards the road ahead, exclaims:</i>
    
    And here it comes. Looks like we're just on time.
    
    **[(CONTINUE)]
        ->Prep03a
        
=== Prep03a ===
<i>Your Uncle Scott speaks:</i>

Now, {player_name}, the bus here is easy. All you have to do is listen for the door opening, head to it, and hop up one large step to get on. Then, you'll just put your pass in the machine next to the driver. I'll help you find it your first time.

Got all that?
    ->Prep03b
            
=== Prep03b ===
            +++[I'm ready.]
                <i>As the bus gets closer to the stop, you hear its breaks creak, and an airlocked door open.</i>
                
                #SFX: BusCloser
                ****[(CONTINUE)]
                    ->Prep04
            +++[How will I know it's the right bus?]
                Good question. The only bus that comes to this stop takes you down one route, to a bunch of things in town, including the {company_name}. You'll even hear an announcement on the bus before we get there.
                ->Prep03b
            +++[Could you repeat that?]
                ->Prep03a
        
=== Prep04 ===
<i>Your uncle gets on ahead of you, while Aunt Tilly helps you up the first step.</i>

<i>You hear the deep voice of the bus driver, speaking in a friendly tone:</i>

Hey, Scott. Good to see you. Family outing today?

//Named for train, but a good effect
#SFX: DoorTrainOpen
*[(CONTINUE)]
    <i>Your uncle puts his pass into the machine and replies:</i>
    
    Yeah, we're doing a bus lesson today. It's {player_name}'s first time.
    
    <i>The driver's voice booms towards you:</i>
    
    Good to meet you, {player_name}. Name's Reggie. Well, anyway, hop on. First row over there is open.
    
    **[(CONTINUE)]
    
        <i>Your uncle collects his pass and replies:</i>
        
        Thanks, Reggie.
        
        ***[(CONTINUE)]
            
            <i>Your uncle helps you feel for the ticket machine and you put your pass in. After the machine makes some noises, it pops right back out again.</i>
            
            <i>You and your aunt and uncle take a seat on the first row of seats to your left.</i>
            
            <i>The bus takes off.</i>
            
                ****[(CONTINUE)]
    
                    <i>You feel the rumble of the bus beneath you. Uncle Scott, who is sitting next to you, speaks:</i>
                    
                    That's Reggie, the bus driver. He's friendly, but you'll get all sorts of different drivers. You notice how he told me which row was open? Others won't always do that, so you'll have to ask something like, "Excuse me, could you tell me the nearest seat that's open?" Unless you want to look on your own!
                    
                    #Ambiance: CarMoving
                        *****[(CONTINUE)]
                            
                            <i>Aunt Tilly speaks up:</i>
                            
                            No, {player_name}, you should always ask. Don't be shy. People will almost always lend a hand. You just have to be courageous about asking.
                            
                            <i>Uncle Scott asks you:</i>
                            
                            Do you have a bus system back home?
                            
                                ******[Yeah.]
                                    ->Prep05
                                ******[I don't know.]
                                    ->Prep05
                                ******[Not really.]
                                    ->Prep05
                                    
=== Prep05 ===
Sometimes, if getting to a public bus is difficult, or non-existent, cities might have a paratransit system. You'll have to research it for your city, but scheduling pick-ups is worth it. Paratransit drivers are usually real helpful, too.

*[(CONTINUE)]
    <i>Aunt Tilly taps on the window.</i>
    
    We're passing the library now, on your right, {player_name}. One of my favorite places in the city.
    
    **[I've been there!]
        That's right. You've been to most of these places already!
        ->Prep06
    **[Nice.]
        ->Prep06
    **[(Say nothing).]
        ->Prep06
    
=== Prep06 ===
<i>You hear an automated woman's voice play throughout the bus:</i>

Now approaching: Central Library.

<i>You hear the sound of a jingle, and feel the bus come to a complete stop as someone gets out. The bus then continues. You hear a few more stops called out over the course of a few minutes.</i>

*[(CONTINUE)]
    <i>Before long, you hear the automated voice speak again:</i>
    
    Now approaching: {company_name}.
    
    **[(CONTINUE)]
        <i>Uncle Scott speaks up:</i>
        
        When you hear 'em say {company_name}, all you need to do is grab this cord above the window, and pull. Go ahead and do it now.
        
        ***[(Pull the cord).]
            ->Prep07
        ***[I can't find it...]
            Here, I'll help you out. Give me your hand...
                ->Prep07
        ***[(Do nothing).]
            Here, I'll do it.
                ->Prep07
                
=== Prep07 ===
<i>You hear the sound of a jingle, like before, and feel the bus begin to slow down. Your uncle nudges you:</i>

Here we are. We'll get up when the bus stops. Unlike the train, the driver won't close the doors... as long as we're on our way out.

*[(CONTINUE)]
    <i>As the bus comes to a complete stop, you hear the door open. You, your aunt, and uncle, all get up, say goodbye to Reggie, and take a step down out the door.</i>
    
    #Ambiance: None
    #SFX: DoorTrainOpen
    **[(CONTINUE)]
        <i>Now on the street, Aunt Tilly exclaims:</i>
            
        Well! That trip was just about ten minutes! Not too bad.
        
        <i>Your uncle turns to you and says:</i>
        
        The last steps are the most difficult, though. You did a good job getting here on your interview, but we'll walk through it carefully, just so you can do it on your own. If you're careful, and confident after practicing, it'll show.
        
        #Ambiance: TrafficLighter
        ***[Let's go!]
            ->Prep08
        ***[I already know how to get there.]
            Well, I believe you. ->Prep08

=== Prep08 ===
Let's just time it. We'll walk all the way up to about the place you need to clock in. I mean, assuming we can't go to the "Employees Only" section...

*[(CONTINUE)]
    <i>You walk with your aunt and uncle to your future workplace, familiarizing yourself with the route. With their help, you take a mental note of every wall, corner, and door you'll need to navigate through in order to clock in.</i>
    
    #Ambiance: None
    **[(CONTINUE)]
        <i>Before long, you eventually feel confident that you can make it on your own tomorrow. Your Aunt Tilly muses:</i>

        That took a little less than five minutes to get here from the bus station. That means -- assuming the buses are on time -- the whole trip from home to work will take only about fifteen minutes for you!
        
            ***[Good to know.]
                ->Prep09
            ***[It's all the same to me.]
                ->Prep09
            ***[(Say nothing).]
                ->Prep09
        
=== Prep09 ===
<i>You head out into the town with your aunt and uncle, satisfied with the preparation work you've done. The three of you head to the River House Café for lunch, a walkable distance from the {company_name}.</i>

#Ambiance: TrafficLight

*[(CONTINUE)]
    <i>That night, you lay in bed thinking about your first day on the job tomorrow, and what it might be like. You've picked out your work clothes already, and remember you have to set an alarm.</i>
    
    <i>Work starts at 8:00am. When do you set your alarm?</i>
    
    #Ambiance: None
    // ~~~~~~~~~~~~~~ ALARM SEGMENT 1 ~~~~~~~~~~~~~~~~
    **[8:00am]
        <i>You set your alarm for 8:00am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>By the time you're out of bed, it's already 8:01am. You get ready as quickly as possible, and head out the door.</i>
            #SFX: AlarmBuzzing
            ****[(CONTINUE)]
                <i>You manage to make the 8:15am bus, and make it to the {company_name} ten minutes later. You're not even focused on the clock at this point.</i>
                #SFX: DoorTrainOpen
                *****[(CONTINUE)]
                    ->WorkLate01
    **[7:45am]
        <i>You set your alarm for 7:45am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed, and get ready as quickly as possible. Work will be starting soon. You head out the door.</i>
            #SFX: AlarmBuzzing
            ****[(CONTINUE)]
                <i>You get to the bus stop and realize you've missed the 7:45am bus.</i>
                <i>After a short amount of time, the 8:00am bus arrives.</i>
                <i>You ride the bus to the {company_name}, and hop off after a ten minute ride. It's now already 8:10am.</i>
                #SFX: BusCloser
                *****[(CONTINUE)]
                    ->WorkLate01
    **[7:30am]
        <i>You set your alarm for 7:30am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed at a reasonable time, and get ready reasonably quickly. You head out the front door, determined to make the bus.</i>
            #SFX: AlarmBuzzing
            ****[(CONTINUE)]
                <i>You manage to make your way to the bus stop up the road, just in time for the 7:45am bus. It seems as though if you had spent just another minute getting ready, you would have missed it.</i>
                <i>You ride the bus to the {company_name}, and hop off after a ten minute ride. By the time you're off the bus, it's already 7:55am.</i>
                #SFX: BusCloser
                *****[(CONTINUE)]
                    ->WorkEarly01
    **[7:15am]
        <i>You set your alarm for 7:15am tomorrow morning, and go to bed. A little early, but hopefully you'll be able to feel rested.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed with relative ease, and get ready, with enough time for a quick breakfast before you head out.</i>
            <i>The amount of time you've given yourself is pleasantly comforting.</i>
            #SFX: AlarmBuzzing
            ****[(CONTINUE)]
                <i>You manage to make your way to the bus stop up the road. It's quiet at first, but after a few minutes, you hear the 7:45am bus pull up. You hop on.</i>
                <i>After a ten minute ride, you hop off when the bus gets to the {company_name}. It's now 7:55am.
                #SFX: BusCloser
                *****[(CONTINUE)]
                    ->WorkEarly01
        
=== WorkLate01 ===
<i>You walk carefully towards the {company_name}, and make your way to the place where you were instructed to meet your trainer. Just then, a voice speaks to you:</i>

{player_name}... right? I heard you'd be coming... eventually. Didn't think you'd be showing up late on your first day, though. You need to be on time. Every day. 

Since you're here...
    *[(CONTINUE)]
        ->WorkA401

=== WorkEarly01 ===
<i>You walk carefully towards the {company_name}, and make your way to the place where you were instructed to meet your trainer. Just then, a voice speaks to you:</i>

{player_name}... right? The new {job_name}? You made great timing. Good to see you're at least reliable.

Well, let's get started.
    *[(CONTINUE)]
    ->WorkA401

=== WorkA401 ===

The name's Oliver. I'll be your trainer.

First things first, let's go ahead and clock in. Come with me. I'll take you to the back.

*[(CONTINUE)]
    <i>You follow Oliver to a back room at the {company_name}. It's relatively quiet. The noises from the rest of the hotel are mostly drowned out. You hear some light wheels creaking in the distance; likely a bellman's cart. In just a few steps, you curve down a hallway to the left, and Oliver explains:</i>
    
    In front of you here is the machine where we clock in. Here, take this card. It's just an ID card with your name and Employee ID on it. When you tap it to this little machine, it detects who you are. Very state of the art.
    
    **[(CONTINUE)]
       Then, you'll push this big button on the right. That'll clock you in. To clock out, you'll push a big embossed button on the left. Go ahead, try clocking in.
        
        <i>Oliver gives you a card, which is cold to the touch. He helps you move the card right up next to the machine, and you immediately hear a beep. You then feel for the "big button" on the right. You're surprised to feel the braille letter "I" on the button.</i>
        
        ***[(Push the button).]
            <i>You hear another sound after pushing the button, confirming you've clocked in. Oliver then speaks to you:</i>
            
            That's it. Any questions on that?
            
            #SFX: TicketPunch1
            ->WorkA401a
            
=== WorkA401a ===
+[Nope, makes sense to me.]
    Great. Let's get started. I'll lead you outside.
    
    <i>You walk further down the hallway with Oliver. As you walk, he continues speaking to you:</i>
    ->WorkA402
+[When's lunch?]
    Asking about that already? ->WorkA402
+[What if the card doesn't work?]
    Good question. Just let your supervisor on duty know, and they'll help you out. That goes for if you press any buttons on accident, too. Always communicate. 
    
    Anything else?
    ->WorkA401a
    
=== WorkA402 ===
    You'll have a five hour shift today, with one fifteen minute break in the middle of that. Longer breaks come from longer shifts. If you work more than six hours, you'll get a thirty minute break.
    
    *[(CONTINUE)]
        <i>You walk to the end of the hallway with Oliver, through a doorway that leads outside. You hear the humming of a generator next to the doorway, but the rest of the area is quiet for now. Oliver speaks:</i>
        
        Here we are, the pool and recreation area. There's barely anyone here yet, except a few aerobic swimmers, but it'll pick up soon. There's a kiosk just to the side here, beneath some trees. That's where you'll be working. Come on, I'll take you over there.
        
        **[(CONTINUE)]
            <i>You continue to walk with Oliver to the kiosk, and he opens a door that leads into it. It's an office space of sorts. He familiarizes you with the layout, and has you sit in a chair. It spins and rolls like an office chair. Oliver speaks:</i>
            
            The first thing you'll do in the morning -- after making sure everything is where it's supposed to be -- is to open the kiosk. The window is closed right now, so you'll have to push a button to the right of the window here. That'll automatically lift it open.
            ->WorkA403
            
=== WorkA403 ===
                *[(Push the button).]
                    <i>You push an easy-to-find, protruding button to the right of the kiosk window. The mechanical window opens upward. You again hear the pool area with full clarity. Oliver continues:</i>
                    
                    We'll get a lot more guests starting around 9:00am, so I'll go over your basic duties.
                    
                    #SFX: KioskOpen
                    **[Okay.]
                        You're mostly going to be in charge of handing out new towels, and putting old towels in the large bin behind you here.
                        
                        Since guests use towels from their rooms pretty often, you'll be taking care of old towels much more.
                        ***[(CONTINUE)]
                            Basically, if a guest wants a new towel, you'll need their room key. You'll tap their key to this machine on the left here, and push the button beneath it, just like how you clocked in earlier. There's only one button on the front, so it's not too complicated.
                            
                            Anyway, it'll be charged to their account after that. Give them their room key back, and a fresh new towel. There will always be fresh towels to the left of the machine, already folded up.
                            
                            ->WorkA403a
                *[Can you do it?]
                    Um. You should really be the one doing this. So, no.
                    ->WorkA403
                *[(Do nothing).]
                    You can push it now.
                    ->WorkA403

=== WorkA403a ===
+[Got it.]
    That reminds me. Customer service is not too difficult here, but you might get a difficult guest. With every guest, just remain as polite as possible, and try to provide a solution. 
    **[(CONTINUE)]
        So, if someone is upset about there being no fresh towels, just say something like, "Unfortunately, we're out right now, but I've called our laundry room and there should be some coming soon."
        
        Remember, how you talk to guests represents the image of the Lilymist Hotel.
        ***[Got it.]
            One of the other most common things you'll be doing here is managing lost and found. 
            
            There are a few lost and found boxes around the hotel, but people leave things by the pool all the time. Behind you, to the right, is a box with some items in it already.
            ****[(CONTINUE)]
                If someone asks for an item that you can't find, you can direct them to the receptionist in the lobby. That's where the main one is. Press two on the phone to call them.
                
                Does that make sense?
                ->WorkA403b
            
+[What if there aren't any fresh towels?]
    Good question. If you run out, use the phone on your right here, and just dial five to connect to the laundry room. Tell them you've run out, and they'll get some out here quickly. Then, just apologize to any guest who wants a towel, and explain things.
    ->WorkA403a
+[Why are we charging people for towels?]
    Just the way it is.
    ->WorkA403a
            
=== WorkA403b ===
+[Understood.]
    ->WorkA404
+[What if the box gets overfilled?]
    If the box gets overfilled, most of the items are taken to our main lost and found area in the lobby. If things in the lost and found box for a long time, they get donated to charity.
    ->WorkA403b
*[Can I have anything that gets unclaimed?]
    No. Of course not.
    // Reminder: Things like this should subtract from score. So should a few other things in this section.
    ->WorkA403b
    
=== WorkA404 ===
I think you'll pick things up pretty quickly. Just remember, if you don't know what to do, you can always contact the manager or lobby receptionist over the phone here. Just try not to leave the kiosk.

*[(CONTINUE)]
<i>You hear footsteps approaching, and someone asks a question in your general direction:</i>

Excuse me, where's the restroom?

    **[(Let Oliver answer it).]
        ->WorkA405
    **[I don't know.]
        ->WorkA405
#SFX: FootstepsCloser

=== WorkA405 ===
<i>Oliver speaks up:</i>

To your left, just around the bushes.

<i>The person replies lazily:</i>

Thank you.
*[(CONTINUE)]
    <i>As they walk away, Oliver says:</i>
    
    That's another thing. Guests are gonna ask you a lot of questions. The "bathroom question" is the most common, but there are some other common ones. You'll hear them all today, I'm sure. I'll be here to help with them.
    
    When you give directions, try to use your hands as much as possible. It helps them understand it better.
 
     #SFX: FootstepsLeave
    **[Okay.]
        ->WorkA406
    **[I disagree.]
        Um. Okay.
        You should always interact with guests like their brains are on vacation. We're here to be helpful.
        ***[(CONTINUE)]
            ->WorkA406
            
=== WorkA406 ===
<i>You continue training with Oliver. For the next hour, he explains a few extra procedures, while answering a few more guest questions.</i> 

<i>You get the chance to watch him rent out a few towels. You pay attention to how he taps the guests' room keys to the rental machine, and hands them a fresh towel.</i>

*[(CONTINUE)]
    <i>After some time, Oliver says:</i>
    
    Not too difficult, right? Why don't you try? The next person who asks to rent a towel, you can take care of them.

    **[(CONTINUE)]
        <i>After a few minutes, you hear someone approaching. They speak in your direction:</i>

        Hi, can I get a towel?
        ***[Sure.]
            ->WorkA406a
        ***[No.]
            <i>You can practically feel the guest in-shock at your response.</i> ->WorkA406b
        ***[(Say nothing).]
            ->WorkA406b

=== WorkA406a ===
*[(Give her a fresh towel).]
    <i>You hear Oliver speak up:</i>
    
    Do you have your room key? Could we see it, please?
    ->WorkA406c
*[Could I please have your room key?]
    <i>The guest gives you their room key.</i>
    **[(Tap the keycard to the machine).]
        <i>You hear a ding.</i>
        <i>You hand their room key back, and give them a clean towel. They say "thank you" and walk away.</i>
        ***[(CONTINUE)]
            <i>Oliver speaks to you:</i>
            
            That was great! You asked them for their keycard, you were polite. You did everything right.
            ****[Thank you.]
                ->WorkA407
            ****[It was easy.]
                Yeah, you picked it up quickly.
                *****[(CONTINUE)]
                    ->WorkA407
            ****[Now what?]
                Eager, are we?
                *****[(CONTINUE)]
                    ->WorkA407
            
*[(Say nothing).]
    ->WorkA406b

->WorkA407

=== WorkA406b ===

<i>After a few moments of awkward silence, Oliver butts in:</i>

Um, yes. You can. Do you have your room key?
->WorkA406c

=== WorkA406c ===

<i>The guest responds, hesitantly:</i>

Yes, I do. Here you are.
*[(CONTINUE)]
    <i>Oliver hands the room key to you. Under his breath, he says:</i>
    
    Here. Now, just tap this to the machine and push the button.
    **[(Tap the keycard to the machine).]
        <i>You hear a ding.</i>
        <i>You hand the room key back to the guest, and give them a clean towel. They say "thank you" and walk away.</i>
        ***[(CONTINUE)]
            <i>Oliver speaks to you:</i>
            That could have gone smoother, but whatever. It's your first time. Focus on communication. We're a service, you know. Don't forget to ask a guest for their room key. We can't be giving out free towels.
            ****[I understand.]
                ->WorkA407
            ****[They didn't give me their key, though.]
                They're not always going to. In fact, they're almost never going to. You need to ask for it.
                *****[(CONTINUE)]
                    ->WorkA407
            ****[Fine.]
                ->WorkA407

=== WorkA407 ===

<i>You continue to work with Oliver for a little while longer. Before long, the door behind you opens. A younger, male voice speaks:</i>

Hey guys. You ready for break?

<i>Oliver turns around and responds to him:</i>

Yes. Thank you. {player_name}, meet Alex. He's one of the lobby receptionists. He'll be bumping us out for break.

#SFX: DoorOpenNorm
*[(CONTINUE)]
    <i>You notice some excitement in Alex's voice:</i>
    
        {player_name == "Alex":
    Your name is Alex too? That's cool. Alex army!
        }
    
    Thanks for helping us out this summer. We've been having to pull extra shifts with all the low staffing.
    **[No problem.]
        Well, anyway. Enjoy your break.
        ->WorkA408
    **[I mean, I needed a job.]
        Well, thanks. I guess.
        ->WorkA408
    **[Poor baby.]
        Haha. Yeah.
        <i>Alex laughs uncomfortably.</i> ->WorkA408

=== WorkA408 ===
<i>Oliver butts in:</i>

Let's go, {player_name}. Break time.

*[(CONTINUE)]

    <i>You walk out of the kiosk with Oliver, and back into the hallway you came from earlier. Oliver enters a door to your right. He holds the door open for you, and you walk in.</i> 
    
    <i>Your stomach growls. You haven't eaten anything today.</i>
    
    **[(CONTINUE)]
        <i>Oliver speaks:</i>
    
        This is our break room. It's not much. But you have a bunch of tables around. There's a microwave on the right here, next to a fridge. You can bring your own food and put it in there.
        
        ***[(CONTINUE)]
            I'll, uh, hang out with you. We'll have a fifteen minute break before we go back.
            
            <i>You and Oliver talk about a few things unrelated to work, but it's mostly small talk. You sense him pulling out his phone every so often.</i>
            
            ****[So, how's life?]
                <i>Oliver, surprised, says:</i>
                What do you want to know?
                ->WorkA408a
            ****[Talk to me.]
                <i>Oliver, surprised, says:</i>
                Um. I can. What do you want to talk about?
                ->WorkA408a
            ****[(Say nothing).]
                <i>You don't say much else for the rest of the break, and sit in the silence.</i>
                ->WorkA409

=== WorkA408a ===
*[Tell me about your family.]
    Ha. That is a long story. My parents and siblings all left town years ago. Not much more to say about that.
    **[(CONTINUE)]
        ->WorkA409
*[How long have you been working here?]
    Three and a half years. Probably gonna be here for three and a half more.
    ->WorkA409
*[Nevermind.]
    ->WorkA409

// end of break
=== WorkA409 ===
<i>Soon, Oliver puts his phone away, and decidedly says:</i>

Okay, ready to get back out there?

*[Let's go.]
    <i>You walk out again with Oliver. This time, you can hear much more of a crowd in the pool area. You walk with him towards the kiosk. He stops at the door and says:</i>
    
    Real quick. In case you were wondering, we don't need to clock in and out for break. Just make sure you don't leave your bump out hanging for more than fifteen minutes. They will definitely be watching the time.
    
    #Ambiance: CrowdPool
    **[Got it.]
        <i>Oliver swings the door to the kiosk open. Alex, the other receptionist, is talking with a guest. You close the door behind you, and Oliver relaxes against the wall, waiting for Alex to finish. Alex then politely tells the guest to have a great day.</i>
        
        <i>Alex lets out a sigh of relief. Oliver speaks:</i>

        You ready for a break yourself?
        
        #SFX: DoorOpenNorm
        ***[(CONTINUE)]
            <i>Alex replies:</i>
            
            You have no idea.
            
            Enjoy the rest of your shift, {player_name}.
            ****[Thanks, you too.]
                <i>Alex sighs.</i>
                ->WorkA410
            ****[What happened?]
                <i>Alex sighs:</i>
                Angry person. Didn't speak English very well, which made things even harder.
                ->WorkA410
            ****[Bye.]
                <i>Alex sighs.</i>
                ->WorkA410

=== WorkA410 ===
<i>Alex leaves out the door behind you. You take a seat at the kiosk again. Oliver speaks to you:</i>

So, I think you've done a pretty good job so far. I'm going to leave you alone for a bit, think you can handle it?
*[Sure, I'll do my best.]
    Great. And ->WorkA411
*[Where are you going?]
    I have to take care of some things. 
    And besides, you're ready. Don't worry, ->WorkA411
*[What if something crazy happens?]
    Don't worry, ->WorkA411
    
=== WorkA411 ===
if you need anything, just dial two for the receptionist on the phone here. Alex will probably pick it up. You're all stocked up too, so don't worry about running out of things.

Okay? Good luck.

*[(CONTINUE)]
    <i>Oliver leaves through the door behind you. You're now working alone.</i>
    
    <i>For several minutes, nobody else approaches the kiosk. You sit listening to the guests enjoying the pool area in the distance.</i>
    #SFX: FootstepsLeave
    **[(CONTINUE)]
    <i>Soon, you hear someone approaching the kiosk. A hoarse, male voice speaks to you:</i>
    
    You got any sunscreen here?
        ->WorkA412
        
=== WorkA412 ===
// Scenario 2
VAR gaveSunscreen = false
VAR knowSunscreen = false

+[No idea.]
    Okay. Thanks. I guess.
        ->WorkA413
*[Let me check.]
    <i>You feel around for a few places where it might be, including the first aid section that Oliver told you about. You find a bottle of some sorts that could be sunscreen lotion, but you're not sure.</i>
    ~ knowSunscreen = true
    **[We don't have any, sorry.]
        Okay. Thanks. I guess.
            ->WorkA413
    **[(Give the bottle to the guest).]
        ->WorkA412a
    **[(Call the receptionist and ask).]
        <i>You pick up the phone and dial two for the lobby receptionist. Alex, the lobby receptionist, answers:</i>
        
        Yeah?
        
        Oh, {player_name}! What's that? A guest wants sunscreen? They'll have to buy it at the shop inside. The sunscreen in there is for you, not for guests!
        ***[(CONTINUE)]
            <i>You hang up the phone. The customer speaks to you again:</i>
            Well?
                ->WorkA412
+[Unfortunately not, but the shop inside has some.]
    Oh. Okay. Thank you.
    ->WorkA413
+{ knowSunscreen == true }[(Give bottle to the guest).]
    ->WorkA412a
+[(Say nothing).]
    Hello?
    ->WorkA412

=== WorkA412a ===
// Give sunscreen bottle to guest
~ gaveSunscreen = true 
<i>You give the bottle of sunscreen to the guest. They say:</i>

Thanks. I'll give it back to you later.
    ->WorkA413

=== WorkA413 ===
// Scenario 3
*[(CONTINUE)]
<i>The guest walks away, and you continue to work for the next thirty minutes, mostly renting out towels, using the rental machine.</i> 

<i>You don't get many questions. But after some time, an elderly woman walks up to the kiosk and speaks to you:</i> 

Excuse me, could you point me to the restroom?
**[I have no idea, sorry. I'm new.]
    Well, what am I going to do? I'll ask someone else.
        ->WorkA414
**[Can't you just follow the signs?]
    Well, I could. I just assumed you would be more helpful. I'll find it myself!
        ->WorkA414
**[To your right, behind the bushes.]
    What? What do you mean behind the bushes? You want me to relieve myself in the bushes?
    ***[No, ma'am. The restroom is around the bushes.]
        Oh. Oh, yes. Well, be more clear next time!
            ->WorkA414
    ***[No, dummy.]
        Well, I never! You should not be working in customer service. You insolent little person!
            ->WorkA414
    ***[Yeah, that's what I want you to do.]
        I don't know if that's sarcasm, young one. I'll find it myself!
            ->WorkA414
            
=== WorkA414 ===
*[(CONTINUE)]
<i>The old woman walks away.</i>

<i>You continue to rent out some towels.</i>

**[(CONTINUE)]
    <i>The door behind you opens again. Oliver's voice is heard:</i>
    
    So, how did you do alone?
    #SFX: DoorOpenNorm
    ***[Not too bad.]
        Not too bad, right? Good to hear.
            ->WorkA415
    ***[People are strange.]
        Yeah, you're going to meet a lot of characters working here, like any customer service job.
            ->WorkA415
    ***[I'm struggling.]
        Buckle down. It's not going to get much harder than this, but you're going to learn a lot on the job, too. I can't train you for every situation. You simply have to learn by doing, sometimes. ->WorkA415

=== WorkA415 ===
Your shift's almost over. You ready to go home? There's a few more things I need to tell you before we clock out.

*{gaveSunscreen == true}[(CONTINUE)]
    <i>Just then, you hear footsteps approach the kiosk again. You hear some sort of bottle being placed on the kiosk counter. A man's voice says:</i>
    
    Hey, thanks for letting me use this. I gave it to some other people, too.
    
    **[(CONTINUE)]
    <i>You hear the man walk away. Oliver pauses, but you can sense him wincing when he speaks:</i>
    
    {player_name}. You can't give that sunscreen out to just anyone. They have to buy their own from the store inside. I should have told you earlier.
        ***[(CONTINUE)]
            ->WorkA416
*{gaveSunscreen == false}[(CONTINUE)]
    ->WorkA416
    
=== WorkA416 ===
So first of all, we don't sell anything to customers here except the towels, technically. If they want sunglasses, sunscreen, pool toys, or something, they have to go to the store inside.

We don't give anything away, either. With the exception of first aid supplies like bandages. The sunscreen next to the first aid is for you. We can't give that out.
    ->WorkA417

=== WorkA417 ===
    +[Good to know.]
        Yeah, so anyway. One last thing.
        ->WorkA418
    +{gaveSunscreen == true}[My bad.]
        Yeah. Don't do that again.
        ->WorkA418
    +[Why?]
        It's a money thing. The store inside sells sunscreen lotion, but if you're here giving it away for free, how's the hotel going to make money off it?
        
        It's also a safety thing. Who knows who's touched it? Rule of thumb. Only trust your co-workers. If that.
        ->WorkA417
        
=== WorkA418 ===
You're going to be pulling mostly morning shifts. But you should always help the closer shift in any way possible, too.

Make things as tidy as possible, make sure any loose towels are stored in the bin here, you know, basic stuff.
*[(CONTINUE)]
    <i>Oliver goes over a few clean-up procedures specific to the workplace, and answers any final questions you have. He helps you grab some loose towels off of the kiosk counter, and throws them in the bin.</i>
    **[(CONTINUE)]
        <i>The door behind you opens again. A new, male voice speaks to Oliver, then to you:</i>
        
        Bump-out's here. Hi, good to meet you.
        #SFX: DoorOpenNorm
        ***[Hi.]
            ->WorkA419
        ***[Hi. What's your name?]
            I'm Marcus.
            ->WorkA419
        ***[See ya.]
            ->WorkA419

=== WorkA419 ===

<i>You don't sense the conversation going much further. Oliver speaks up:</i>

Marcus here is your bump-out for the day. Remember, you don't get to leave until your bump-out gets here. Don't leave the kiosk unattended.

*[Got it.]
    ->WorkA420
*[What if my shift's already over?]
    Doesn't matter. As long as you're not getting overtime, which you probably won't, you might even be asked to stay longer if something happens to your bump-out. 

    You'll be paid for your extra minutes, don't worry.
    **[Got it.]
        ->WorkA420
    **[Okay, I guess.]
        ->WorkA420
    **[That's not very reassuring.]
        ->WorkA420
        
=== WorkA420 ===
Come on, let's head out.

<i>You walk with Oliver out of the kiosk, and into the doorway you came from this morning.</i>

*[(CONTINUE)]
    <i>As you continue walking down the hallway, towards the timeclock machine, Oliver says:</i>
    
    You'll be on your own after today. I won't be around for the most part. I work inside. You'll be reporting to our supervisor, who is usually Gordon.
    
    Oh! Here he is now.
    
    #Ambiance: None
    **[(CONTINUE)]
        <i>You've almost made it to the timeclock machine. Gordon is in the hallway in front of you. His poised, mature voice speaks directly to you:</i>
        
        Good to see you here, {player_name}. Oliver, how did {player_name}'s first day go?
        
        ***[(CONTINUE)]
            <i>Oliver responds:</i>
        
            I'd say {player_name} picked things up pretty quickly. Most things are on-the-job training, as you know.
            
            ****[(CONTINUE)]
            <i>You hear Gordon chuckle, and reply:</i>
            
            Too true. But {player_name}, I want to make sure you're ready for this. I'm going to be your supervisor now, so any questions you have, you can talk to me.
            
            Any guest altercations happen, you call me on that phone. Pressing six will get to my office directly.
                *****[Thanks.]
                    ->WorkA421
                *****[Good to know.]
                    ->WorkA421
                *****[I'll be fine.]
                    ->WorkA421

=== WorkA421 ===
<i>Gordon laughs warmly:</i>

You have a good day.

*[(CONTINUE)]
<i>You hear Gordon prance down the hall. Oliver whispers:</i>

I wanted to make sure I give you a fuller evaluation, uh, not in front of him. As your trainer, I'm going to tell you how you did today with all honesty.

#SFX: FootstepsLeave
**[Okay.]
    ->WorkA422
**[Let's hear it.]
    ->WorkA422
**[Not ready for this.]
    ->WorkA422

=== WorkA422 ===
// Evaluation - 
I do believe you've picked things up well enough, that much is true.

{ jobScore >= 50:
I saw your performance today. You're doing a really good job, otherwise. I mean it.
}

{ jobScore < 50:
But there are a few things you need to work on.
}

*[(CONTINUE)]

Make sure you're interacting with customers politely. If you're not sure how to help someone, don't guess. Our help is a phone call away, so there's usually no excuse to leave a guest angry. 

At the same time, you should make your best judgement on easy things. When in doubt, think about the guest experience.

    **[(CONTINUE)]

    And make sure you're at work on time. Plan ahead. If you're gonna be late, tell us. 

    Anything else I can tell you before we go?

    No, I think that's it. Let's get out of here.
        ->WorkA423

=== WorkA423 ===
*[Let's go.]
    ->WorkA424
+[Will I be judged like this every day?]
    Not likely. Gordon might say something if he sees you're doing a good job. Or a bad job.
        ->WorkA423
*[Finally.]
    ->WorkA424

=== WorkA424 ===
<i>You tap your ID to the timeclock machine, and press the big button on the left of it to clock out. It has the braille letter "O" marked on it.</i>

<i>Oliver does the same, after you. Following this, Oliver breathes out a satisfied sigh, and says:</i>

That's our shift. You know how to get out of here? Good luck on your first day completely alone tomorrow.

#SFX: TicketPunch1
*[Goodbye.]
    ->WorkA425
*[Peace out.]
    ->WorkA425
*[Could you remind me how to get out?]
    Yeah. This hallway behind you? Just make your first right-hand turn, and at the end of that is the door to the lobby. From there, it's two immediate lefts to the front door.
    **[Got it. Goodbye.]
        ->WorkA425
    **[Could you help me?]
        Uh. Sure, I guess. I'll go with you. I'm going that way anyway.
        ->WorkA425

=== WorkA425 ===
<i>You leave down the hallway, carefully bearing around turns from memory. Oliver, going in the same direction, sees to it that you make it out okay.</i> 

*[(CONTINUE)]
    <i>Having made it outside, you say goodbye to Oliver one last time, and find yourself on the sidewalk right outside the Lilymist Hotel.</i>
        **[(CONTINUE)]
            ->Free401
    
=== Free401 ===
// 'FREE401+' SHARED WITH OTHER JOBS
VAR visitKai = false
VAR calledKai = false

<i>You're now on the street, outside the {company_name}. You hear the afternoon traffic go by.</i>

<i>Just then, you get a phone call. It's Kai.</i>

#Ambiance: TrafficLight
*[Pick it up.]
    <i>You answer the phone and say hello. Kai's voice is on the other end:</i>
        ->Free402
*[Decline call.]
    <i>You tap the button to decline the call.</i>
        ->Free405a
*[Ignore it.]
    <i>You ignore the call, and let it go to voicemail.</i>
        ->Free405a

=== Free402 ===
Hey, {player_name}, how was work?
    *[It was good.]
        ->Free403
    *[Long day.]
        ->Free403
    *[Meh.]
        ->Free403

=== Free403 ===
Yeah? You wanna talk about it? 

I also wanted to show you what I've been working on, and see what you think!
    *[Yeah, let's hang out.]
        ->Free404
    *[What are you working on?]
        ->Free404
    *[Is this for your show coming up?]
        Yeah, ->Free404
        
=== Free404 ===
I've been working on my set for that show, but I think I'm going crazy.

Wanna come over? I'm coming from the beach right now. The {company_name} is on my way home. I can walk with you.
    ->Free405

=== Free405 ===
    +[Sure, why not?]
        ~ calledKai = true
        Alright! I'll catch you in a few minutes. Just sit tight!
        
        <i>You say goodbye and hang up the phone.</i>
        **[(CONTINUE)]
            ->Free405a
    +[Not today. I'm tired.]
        Okay, I understand. I'll see you some other time, then.
        
        <i>You say goodbye and hang up the phone.</i>
        **[(CONTINUE)]
            ->Free405a
    +[I've got work in the morning.]
        I understand. But I promise it'll only take a little bit!
        ->Free405

=== Free405a ===
// Will either bypass or execute the Kai hangout section

<i>Soon, you hear the sound of a bus approaching. It's the bus that can take you home.</i>

#SFX: BusCloser
*{ calledKai == true }[(Wait for Kai).]
    <i>You hear the bus stop at the station down the street, near the {company_name}. You hear the doors pick up passengers, then hear it drive away.</i>
    
    <i>You continue waiting for Kai.</i>
    #SFX: DoorTrainOpen
        **[(CONTINUE)]
            ->Free406
*[(Get on the bus).]
    <i>You hear the bus stop at the station down the street, near the {company_name}. You get on, and put your pass into the ticket machine.</i>
    
    <i>You sit down, and the bus drives away.</i>
    
    <i>As the bus drives away, you think you hear a skateboard on the sidewalk outside, going in the opposite direction.</i>
    
    #SFX: DoorTrainOpen
    **[(CONTINUE)]
        <i>The bus stops at multiple places, before announcing the station next to your aunt and uncle's house.</i>
        
        <i>You pull the cord, and get out when the bus stops.</i>
        ***[(CONTINUE)]
            <i>You head to your house, and make your way to the front door.</i>
            ****[(Open the door).]
                ->Free415
            /// NOTE: This bypasses Kai hangout
    
=== Free406 ===
~ visitKai = true
<i>Before long, you hear the familiar sound of Kai's skateboard rushing down the street towards you.</i>

<i>As you wave towards the approaching skateboard, Kai greets you energetically:</i>

Hey, hey, {player_name}! Here I come! Woo!

<i>You hear Kai's skateboard stop next to you.</i>
#SFX: SkateboardStop

*[Hey, Kai.]
    Hey, {player_name}. What's up?
    ->Free407
*[Be careful!]
    Don't worry, I won't hit you. I haven't fallen off for years. Well, I fell off yesterday, but that was because I was actually doing something stupid. 
    ->Free407
*[What's up, dude?]
    What's up, {player_name}?
    ->Free407

=== Free407 ===
Are you ready to head over? We'll be cutting through the city, towards the river. Follow me!

*[Okay.]
    <i>You follow Kai through town, and after several minutes of walking, traffic seems to die down. You begin to barely hear the river in the distance.</i>
    
    <i>You chat with Kai about work on the way to his house.</i>
    
    #Ambiance: TrafficLighter
    **[(CONTINUE)]
        <i>As you walk through his front door, Kai shouts across the house:</i>
        
        Hi, Mom. I brought a friend over.
        
        <i>You hear a woman's voice from across the house acknowledge him, but can't quite make out what she said. Kai says to you:</i>
        
        Come on, we'll head to my room. That's where the magic happens.
        
        #Ambiance: None
        ***[Lead the way.]
            ->Free408
        ***[Don't ever say that again.]
            Okay, okay.
                ->Free408

=== Free408 ===
<i>Kai leads you to his room, and has you take a seat on a bean bag. You sink into it with an awkward thud.</i>

*[(CONTINUE)]
    <i>You hear him put his things down, and then tinker with some equipment. While doing this, he speaks to you:</i>

    So, I'm just starting this mix for the first set of the party. I think it's going to be three sets total? And honestly? Well, I don't know how to put it.
    
    I'm freaking out.
        **[Tell me about it.]
            ->Free409
        **[What do you mean?]
            ->Free409
        **[Pull yourself together.]
            ->Free409
            
=== Free409 ===
It's just a lot. Three sets! I don't know if I can do this. They're paying me for professional work, and I don't know if I can deliver.
    *[Not with that attitude.]
        ->Free410
    *[If you can't do it, you should tell them.]
        ->Free410
    *[You just have to believe.]
        ->Free410
    *[Don't be such a baby.]
        You really think I'm making this overly difficult? ->Free410
        
=== Free410 ===
Yeah, maybe. I don't know.

If I tell them I can't do it now, they'll have time to find someone else, right? But at the same time, I can't let them down! Can I?

I mean, I can't let myself down, either.
*[If you really want it, work hard for it.]
    ->Free411
*[Knowing your boundaries is reasonable.]
    Yeah. You're right. I'm caught up in my own head. I just didn't expect a dream gig would be this much pressure.
    ->Free411
*[Did you expect it would be easy?]
    I mean, no. I guess I never really thought of that. I'm caught up in my own head. I just didn't expect a dream gig would be this much pressure.
    ->Free411
*[You were hired to do a job.]
    Yeah. You're right. I'm caught up in my own head. I just didn't expect a dream gig would be this much pressure.
    ->Free411

=== Free411 ===
I gotta take more tips from you. Your work experience could teach me a few things.

<i>You notice Kai fidget around with his equipment anxiously as he says this.</i>

*[(CONTINUE)]
    Hey, I wanna show you what I've been working on though. Funny enough, making a set takes the stress off of it.
    
    Okay, hang on. Just gotta do this. And this. And this. Huh? What's wrong?
    
    Oh, I need to turn the speakers on so we can hear.
    
    <i>You hear Kai walk over to the other side of the room and flip a switch.</i>
    
    **[(CONTINUE)]
        <i>In an instant, you hear an intense, startling sound that's so loud, it rattles the room. You can practically feel the sound pushing you into the bean bag. It's deafening.</i>
        
        <i>Very quickly, the sound shuts off. Kai rapidly apologizes:</i>
        
        Sorry! Sorry! I forgot I had it playing loud in the headphones.
        
        ***[No problem!]
            ->Free412
        ***[Are you trying to kill me?]
            ->Free412
        ***[(Laugh nervously).]
            ->Free412
            
=== Free412 ===
<i>You hear Kai's mom shout furiously from across the house at the top of her lungs:</i>

Kai, you better turn that thing down!

<i>Kai shouts his response:</i>

Sorry, Mom!

*[(CONTINUE)]
    <i>Kai turns to you, practically in shock:</i>

    Okay, let's try that again.
    
    **[(CONTINUE)]
        <i>Kai plays his mix for you, at a now-lower volume, and you listen for a few minutes. He talks through it, explaining some of the choices he made. He explains the way he twists knobs in between songs to do all sorts of things.</i>
        
        <i>You admit, the method behind it is fascinating.</i>
        
        ***[(CONTINUE)]
            <i>Kai turns it off and says to you brightly:</i>
            
            You ever thought of becoming a DJ?
            
            ****[You think I could?]
                I can see it.->Free413
            ****[Never thought about it.]
                I can see it.->Free413
            ****[Not interested.]
                ->Free413
                
=== Free413 ===
Hey, you never know. As long as you know where your hands go, it's not so visual. You could be the next Zombie Rat! 

*[Who's Zombie Rat?]
    Only the most insane EDM DJ on the planet! You never heard his stuff? Oh, man, I have so much to show you.
    ->Free414
*[It sounds so interesting!]
    Oh, man, I have so much to show you.
    ->Free414
*[Not into it.]
    Well, I tried.
    ->Free414
    
=== Free414 ===
*[(CONTINUE)]
    <i>After a bit more time hanging out with Kai, you decide it's time for you to go home.</i>
        
    <i>Kai's mom drives you all the way to your aunt and uncle's house across town. You thank her, and head to your front door.</i>
    **[(CONTINUE)]
        ->Free415
    
=== Free415 ===
VAR timeUp = 745
~ isLate = false

<i>Upon entering the house, you're greeted by Stew, who pants excitedly around you.</i>

<i>You're greeted by your aunt and uncle who anxiously look forward to hearing about your day at work.</i>

#SFX: DoorOpenCloseCreak
// NOTE TO SELF: Possibly lengthen this section with some interaction?
*[(CONTINUE)]
    <i>That night, you lay in bed, thinking about the work day behind you. Then, you think about the work day ahead. Tomorrow is day two.</i>
    
    <i>Work starts at 8:00am again. For what time do you set your alarm?</i>
    
    // ~~~~~~~~~~~~~~ ALARM SEGMENT 2 ~~~~~~~~~~~~~~~~
    // NOTE: When breakfast is made, 'timeUp' is +15min, for use in commute section below
    **[7:45am]
        ~ timeUp = 745
        ~ isLate = true
        <i>You set your alarm for 7:45am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed, and get ready as quickly as possible. There's not much time for anything else.</i>
            <i>Work will be starting soon. You head out the door at around 7:55am.</i>
            #SFX: AlarmBuzzing
            ****[(CONTINUE)]
                <i>You get to the bus stop. The 8:00am bus arrives shortly.</i>
                <i>You ride the bus to the {company_name}, and hop off after a ten minute ride. It's now already 8:10am.</i>
                #SFX: BusCloser
                *****[(CONTINUE)]
                    ->Prep410
    **[7:30am]
        ~ timeUp = 730
        <i>You set your alarm for 7:30am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed, and get ready as quickly as possible.</i>
            <i>By the time you do this, it's already 7:40am. You think you're on track to get to work on time.</i>
            #SFX: AlarmBuzzing
                ****[(Go to the bus station).]
                    <i>You head out the door, and walk to the bus station, just in time for the 7:45am bus to arrive.</i>
                    <i>You ride the bus to {company_name} and hop off after a ten minute ride. The time is now 7:55am.</i>
                    *****[(CONTINUE)]
                        ->Prep410
                    #SFX: BusCloser
                ****[(Make breakfast).]
                    ~ isLate = true
                    ~ timeUp = 745
                    <i>You remember how hungry you were yesterday, and decide that making a quick breakfast wouldn't hurt.</i>
                    
                    <i>You don't spend too much time making it, but your stomach will thank you regardless.</i>
                    *****[(CONTINUE)]
                        <i>It's time to head to the bus.</i>
                        <i>You head out the door, and walk to the bus station. You find that you've clearly missed the 7:45am bus.</i>
                        ******[(CONTINUE)]
                            <i>The 8:00am bus pulls up shortly. After a ten minute ride, you are dropped off at the {company_name}. The time is now 8:10am.</i>
                            #SFX: BusCloser
                            *******[(CONTINUE)]
                                ->Prep410
                        
    **[7:15am]
        ~ timeUp = 715
        <i>You set your alarm for 7:15am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed, and quickly get ready.</i>
            <i>By the time you do this, it's 7:25am. You think you're on track to get to work on time. You might even be ahead of schedule.</i>
            #SFX: AlarmBuzzing
                ****[(Go to the bus station).]
                    <i>You head out the door, and walk to the bus station, just in time for the 7:30am bus to arrive.</i>
                    <i>You ride the bus to {company_name} and hop off after a ten minute ride. The time is now 7:40am.</i>
                    *****[(CONTINUE)]
                        ->Prep410
                    #SFX: BusCloser
                ****[(Make breakfast).]
                ~ timeUp = 730
                    <i>You remember how hungry you were yesterday, and decide that making a quick breakfast wouldn't hurt.</i>
                    
                    <i>You don't spend too much time making it, but your stomach will thank you regardless.</i>
                    *****[(CONTINUE)]
                        <i>It's time to head to the bus.</i>
                        <i>You head out the door, and walk to the bus station. You find that you've missed the 7:30 bus, but you don't stress about it.</i>
                        ******[(CONTINUE)]
                            <i>The 7:45am bus pulls up shortly. After a ten minute ride, you are dropped off at the {company_name}. The time is now 7:55am.</i>
                            #SFX: BusCloser
                            *******[(CONTINUE)]
                                ->Prep410
    **[7:00am]
        ~ timeUp = 700
        <i>You set your alarm for 7:00am tomorrow morning, and go to bed.</i>
        ***[(SLEEP)]
            <i>You wake up to your alarm going off.</i>
            <i>You get out of bed, and slowly get ready. You wonder if you got enough sleep.</i>
            <i>By the time you do this, it's 7:12am. You're definitely on track to get to work on time. You might even be ahead of schedule.</i>
            #SFX: AlarmBuzzing
                ****[(Go to the bus station).]
                    <i>You head out the door, and walk to the bus station, just in time for the 7:15am bus to arrive.</i>
                    <i>You ride the bus to {company_name} and hop off after a ten minute ride. The time is now 7:25am.</i>
                    <i>You're going to be quite early.</i>
                    *****[(CONTINUE)]
                        ->Prep410
                    #SFX: BusCloser
                ****[(Make breakfast).]
                ~ timeUp = 715
                    <i>You remember how hungry you were yesterday, and decide that making a quick breakfast wouldn't hurt.</i>
                    
                    <i>You don't spend too much time making it, but your stomach will thank you regardless.</i>
                    *****[(CONTINUE)]
                        <i>It's time to head to the bus.</i>
                        <i>You head out the door, and walk to the bus station.</i>
                        ******[(CONTINUE)]
                            <i>The 7:30am bus pulls up shortly. After a ten minute ride, you are dropped off at the {company_name}. The time is now 7:40am.</i>
                            <i>You're going to be quite early.</i>
                            #SFX: BusCloser
                            *******[(CONTINUE)]
                                ->Prep410
    
=== Prep410 ===
// my god what am i gonna do here
// assign timeUp to each outcome before getting here. remove isLate's above. at end of this coming section, mark isLate based on new timeUp number. 

<i>As you hop off the bus, and head towards the {company_name}, you hear some construction going on ahead. A worker stops you and says:</i>

Woah, there. Sidewalk's closed, you'll have to go around. We've set up a temporary walkway on the street.

#Ambiance: TrafficLight
*[(Carefully make your way around).]
    <i>You attempt to walk around the construction zone as carefully as possible.</i>
    
    <i>Each step feels like somewhat of an obstacle due to the unpredictable nature of the makeshift path, but you're glad you decided to be cautious.</i>
    
    <i>You make it through, and continue on to the {company_name}.</i>
    
// If got here at 7:55, this option makes player late. 
    { timeUp == 730:
    ~ isLate = true
    }
        ->Prep411
*[(Quickly make your way around).]
    <i>You attempt to walk around the construction zone as quickly as possible.</i>
    
    <i>But you trip and fall in your haste. It's not serious, but it hurts bad enough to have to collect yourself for a few minutes.</i>
    
    <i>A bystander helps you up, and you continue on to the {company_name}.</i>
    
// If got here at 7:55, this option makes player late. 
    { timeUp == 730:
    ~ isLate = true
    }
        ->Prep411
*[Could you help me? I'm in a hurry.]
    Uh. Sure, I guess.
    
    <i>The construction worker helps you around the closed sidewalk. It's not quick, but not slow, and with all the unpredictable steps, it beats navigating on your own.</i>
        ->Prep411

=== Prep411 ===    
*[(CONTINUE)]
    <i>You make your way into the {company_name}, and with some haste, head straight for the timeclock machine in the back.</i>

    { timeUp == 700:
    <i>You've got some time to spare, and relax a bit in the break room until it's closer to 8:00am. Being early paid off today.</i>
    }
    { isLate == true:
    <i>You clock in. You're late.</i>
    }
    { isLate == false:
    <i>You clock in. You're on time.</i>
    }
    { timeUp == 730:
    <i>But just barely.</i>
    }

    #Ambiance: None
    **[(CONTINUE)]
        ->WorkA426
    
=== WorkA426 ===    
<i>You make your way to the kiosk in the pool area by memory.</i> 

<i>You take a seat at the kiosk, and can sense the window is closed, based on the lack of sound outside.</i>

*[(Push the button next to the window).]
    <i>You push the big button to the right of the kiosk window to open it. You hear it elevating with a slight rattle.</i>
    
    <i>Immediately, you hear a man's shy voice:</i>
    
    Oh, hello! Are you guys open?
    
    #SFX: KioskOpen
    **[We are now.]
        ->WorkA427
    **[Yes, how can I help you?]
        ->WorkA427
    **[Unfortunately.]
        ->WorkA427
    
=== WorkA427 ===
VAR towelFree = false
VAR towelCash = false

Oh, well. I was wondering if I could rent a towel from you?
*[Sure, do you have your room key?]
    I need my room key? I don't have it on me.
    ->WorkA427a
*[You may.]
    <i>The guest pauses for a second, then says awkwardly:</i>
    
    So, uh, how do I do this? The sign says I need a room key, but I don't have mine.
    ->WorkA427a
*[You'll have to buy one from inside.]
    But I thought I could buy one from you? That's what the sign says.
    ->WorkA427b
    
=== WorkA427a ===
// Options Merge
**[Sorry, you need it to rent a towel.]
            But I paid so much money to stay here. Please?
            ***[Fine. Take it, but make sure you return it.]
                ->WorkA427c
            ***[I'm sorry, but no.]
                ->WorkA427b            
            ***[I don't care what you spent, that's the rule.]
                ->WorkA427b
        **[Too bad.]
            ->WorkA427b
        **[You could pay me cash.]
            ~ towelCash = true
            <i>The guest stutters suspiciously:</i>
            
            Oh, right. Yeah, let me go get my wallet. I left it, um, in the car. Yeah. See you later!
            ***[(CONTINUE)]
                <i>The guest runs off. You wonder if asking for cash was the right thing to do.</i>
                ->WorkA428
        **[Fine. Take one, but make sure you return it.]
        ->WorkA427c

=== WorkA427b ===
// Angry reaction

<i>You notice the guest turn from polite to angry in a matter of seconds. Practically furious, he says:</i>
                
What's the matter with you guys? Thanks for nothing!
*[(CONTINUE)]
    <i>The guest storms off.</i>
    ->WorkA428
    
=== WorkA427c ===
// Happy about a free towel 

~ towelFree = true
Oh, thank you! That's very nice of you. Yes, thank you. Goodbye.

<i>The guest runs off. He seemed a little odd. You're not sure if giving away the towel was the right move. Hopefully he returns it.</i>
->WorkA428

=== WorkA428 ===
*[(CONTINUE)]
    <i>You keep working through the first half of your shift. Every other interaction until your break is relatively easy. You rent out towels, and answer the restroom question several times without trouble.</i>
    
    **[(CONTINUE)]
        <i>By the time you get back from your first break, you can sense, by the splashing and sound of poolgoers, that the pool area is a little busier than earlier.</i>
        
        <i>You sit back in your chair and continue to work through the day. You think you might have heard a light sound on the kiosk counter, but you pay it no mind.</i>
        
        #Ambiance: CrowdPool
        ***[(CONTINUE)]
        <i>An older, haughty male voice approaches you from across the counter, and says:</i>
        
        Hi. I left my jacket here last night. I was wondering if it was turned in?
            ->WorkA429

=== WorkA429 ===
// Work Scenario - Lost & Found

*[I wouldn't know.]
    <i>The man lets out a huff:</i>
    
    Well, could you check? Please?
    ->WorkA429
*[Let me check.]
    Thank you. It was a blue, cotton jacket. Fuzzy and white on the inside.
    **[(Check the lost and found box beneath you)]
        ->WorkA429a
    **[(Call the lobby and ask).]
        ->WorkA429b
    **[(Give him the lost and found box to look through).]
        ->WorkA429c

=== WorkA429a ===
// Base merge

*[(Rummage through box for a jacket.)]
    <i>You rummage through the lost and found box and feel for a jacket.</i>
    
    <i>You think you find two that might match his description, one heavier, one lighter.</i>
    **[(Show him the lighter one).]
        <i>You show him the lighter jacket you found. He squaks impatiently:</i>
        
        No, that's not it. That one's pink!
        ***[(Show him the heavier one).]
            That's not it either! Look, no offense, but I'm not so sure you know what you're doing. ->WorkA429d
    **[(Show him the heavier one).]
        <i>You show him the heavier jacket you found. He squaks impatiently:</i>
        
        No, that looks nothing like what I described.
        ***[(Show him the lighter one).]
            That one's pink! Look, no offense, but I'm not so sure you know what you're doing. ->WorkA429d
*[(Pretend to rummage through box).]
    <i>You put your hands in the lost and found box, and make it look convincing that you're looking for the guest's jacket. You don't expect to find anything.</i>
    
    <i>After a moment or two, you look up at him.</i>
    **[It's not here.]
        You tried. Thanks anyway.
    
        <i>The guest sighs, and you hear a light thump on the counter as he walks away.</i>
        ->WorkA430
    **[I can't find it.]
        <i>The guest says, jeeringly:</i>
        
        Well, that doesn't sound very reassuring to me. ->WorkA429d
    **[Let me call the lobby for you.]
        ->WorkA429b
    **[(Tell the guest you're blind).]
        <i>The guest says, jeeringly:</i>
        
        You might have told me that before you started looking. ->WorkA429d
*[(Tell the guest you're blind).]
    <i>The guest says, jeeringly:</i>

    Well, thank you for the honesty, I guess. ->WorkA429d

=== WorkA429b ===
// Call lobby lost & found

<i>You dial two and call the receptionist in the lobby, and ask if a jacket matching the guest's description turned up.</i>
        
<i>You are put on hold while they check.</i>
*[(CONTINUE)]
    <i>They come back with an answer:</i>

    Yeah, we have a jacket that looks just like that. Someone must have brought it in. Have him come see me.
    
    **[(CONTINUE)]
        <i>You get off the phone, and can practically feel the guest looking at you with anticipation.</i>
        
        ***[Your jacket's in the lost and found inside.]
            <i>You inform the guest of where their jacket is, and explain to them where they can find the lobby receptionist. The man breathes a sigh of relief and says:</i>
            
            Thank you. You guys are really efficient around here, I'll give you that.
            
            <i>You hear the sound of a light thump on the kiosk, and he walks away.</i>
            ->WorkA430

=== WorkA429c ===
// Give guest lost & found box to look through 

<i>You pick up the lost and found box and put it on the kiosk counter so that the man can look through it himself.</i>
*[(CONTINUE)]
    <i>After some time, he pouts, defeatedly:</i>
    It's not here. That's so sad.
    **[I'm sorry about that.]
        You tried. Thanks anyway.
    
        <i>The guest sighs, and you hear a light thump on the counter as he walks away.</i>
        ->WorkA430
    **[Guess it wasn't meant to be.]
        That's not what I want to hear right now! You are so unprofessional.
    
        <i>The guest huffs, and storms away. You hear a light thump on the counter before he goes.</i>
        ->WorkA430
    **[Let me check with the lobby.]
        ->WorkA429b

=== WorkA429d ===
// Guest asks if they could look through themselves

Is there no chance you could let me take a look at the box?
*[(Give him the lost and found box to look through).]
    ->WorkA429c
*[I can't allow that.]
    Are you serious?
    
    <i>The guest huffs, and storms away. You hear a light thump on the counter before he goes.</i>
    ->WorkA430
*[Let me call the lobby for you.]
    <i>You sense the man's rising annoyance.</i>
    ->WorkA429b

=== WorkA430 ===
*[(CONTINUE)]
VAR towelCounter = true

<i>You continue the rest of your shift mostly as normal.</i>

<i>Yet, you continue to hear the sound of something light dropping onto the kiosk counter as people walk by.</i> 

<i>It's the same sound you've heard a couple times earlier today. You've gotten away with paying it no attention, so it might just be the guests hitting the counter.</i>
    **[(Ignore the sound - don't let it get to you).]
        <i>You figure if it's something worth knowing, a co-worker will tell you.</i>
        ->WorkA431
    **[(Check the counter with your hands).]
        ~ towelCounter = false
        <i>You glide your hands across the kiosk counter to make sure it's clean, and you immediately feel some towels strewn across it.</i>
        
        <i>People must have been throwing their towels on the counter for you to put away.</i>

        <i>You put the towels in the laundry bin behind you. Most of them are damp.</i>
        ->WorkA431

=== WorkA431 ===
*[(CONTINUE)]
<i>As your shift comes to a close, you hear the kiosk door open behind you. A somber, male voice you haven't heard before speaks to you:</i>

Hi, {player_name}? You're the new kid, right? I'm Matt. I'm your bump-out. 

<i>You sense Matt looking around the room.</i>

#SFX: DoorOpenNorm
    **[(CONTINUE)]
    { towelCounter == false: 
    Nice, you kept things pretty clean.
    ->WorkA432
    }
    { towelCounter == true: 
    What are all those towels doing on the counter? 
        ***[I didn't know.]
            ->WorkA431a
        ***[What towels?]
            ->WorkA431a
        ***[I'll clean those up now.]
            ->WorkA431a
    }

=== WorkA431a ===
// Called out for towels left on counter

People leave towels on the counter all the time, just assuming we're going to put it in the bin for them.
            
Whatever. I heard you're, um. Nevermind. Just clean 'em up. Make sure you check the counter every so often.

*[Okay.]
    <i>You clean up the towels, and put them in the laundry bin.</i>
    ->WorkA432

=== WorkA432 ===
<i>Matt is short in the way he says goodbye to you, and you head out the door, towards the timeclock machine inside.</i>

*[(CONTINUE)]
    <i>As you clock yourself out, being sure to push the button on the left of the timeclock machine with the braille letter "O", you hear footsteps approaching you from down the hallway.</i>
    #Ambiance: None 
    #SFX: FootstepsCloser
    **[(CONTINUE)]
        <i>Your supervisor Gordon calls out to you. His rich voice reverberates the hall:</i>
        
        {player_name}! How was your first day alone? Come into my office, I want to go over some things with you.
        ***[(Follow Gordon).]
// EVALUATION 
            <i>You follow Gordon down the hallway into his office, and take a seat by his desk.</i>
            
            <i>You hear him sit down and speak:</i>
            
            You're getting quite comfortable here already, it seems.
            ****[(CONTINUE)]
                { jobScore >= 50: 
                I hear you're doing great work. I knew you would be a great employee to fill that position.
                
                I don't have much else to say about your customer service skills, actually. Keep making guests happy. That's number one.
                ->WorkA432b
                }
                { jobScore < 50 && jobScore >= 30:
                But I'd like to see you improve a little.
                
                We need employees here who can provide excellent customer service. You represent the hotel. I chose you for the position because I thought you could do it.
                ->WorkA432b
                }
                { jobScore < 30:
                But I need to see you improve. By a lot.
                
                We need employees here who can provide excellent customer service. You represent the hotel. I chose you for the position because I thought you could do it.
                ->WorkA432b
                }
    
=== WorkA432b ===  
// Negative evaluation merge

*[Understood.]
    ->WorkA433
*[I can get better!]
    Okay. I'm counting on that! ->WorkA433
*[(Say nothing).]
    ->WorkA433
    
=== WorkA433 ===
// More Evaluation

Let's go over a few more things.

{ isLate == false:
First of all, thank you for showing up on time. It means a world of difference. You must have great time management skills, and wake up early.
}
{ isLate == true:
First of all, you need to show up to work on time. No excuses. I can't keep an employee I can't rely on. Manage your time better in the morning, or I can't have you working here anymore.
}
*[(CONTINUE)]
    And renting towels isn't too difficult, is it? It seems like you're getting the hang of it.
    
    { towelFree == true:
    However, we had a report that a guest got a towel for free in the pool area, without getting charged. Please make sure you're on top of this.
    
    It's not just because it's the company's policy, but it protects you, too. Before you know it, he's going to tell other people that he got one for free, and then you're in real trouble if a mob comes to your window.
    }
    { towelFree == false:
    I've heard you're efficient, and fair. Good job maintaining company policy, and asking for help when you need it.
    }
    **[(CONTINUE)]
        Last thing before you go. Payday is at the end of this week. And your next shift is going to be after that. So when you come in next time, you'll have a paycheck to pick up!
        ***[Thanks!]
            No, thank you for the hard work.
            ->WorkA434
        ***[Could I have it in cash?]
            No way. We don't do cash here. And I can't think of a place that would. Imagine what a nightmare paying everyone would be?
            
            You'll get a check that you can deposit into your bank. Legally protects everyone.
            ->WorkA434
        ***[Can't you just pay me now?]
            Paying people at a workplace like this is done through a payroll process. You'll get a check that you can deposit into your bank. Legally protects everyone. 
            ->WorkA434
            
=== WorkA434 ===
*[(CONTINUE)]
<i>Gordon claps his hands together.</i>

Okay! That's all I've got. We'll see you on your next shift. Have a good day!

**[(CONTINUE)]
    ->Ren401

=== Ren401 ===
You leave the {company_name}, and hop on the bus when it arrives. The bus takes you home, and you plop down on the couch. 

Uncle Scott is still at work. Aunt Tilly is outside. The house is quiet, and you're a little tired.

*[(Take a nap).]
    <i>You take a nap on the couch, enjoying the peace after a day at work.</i>
    
    <i>You wake up feeling serene.</i>
    **[(CONTINUE)]
        ->Ren402
*[(Occupy yourself).]
    <i>Despite being tired, you manage to find a few things for you to do for the rest of the afternoon.</i>
    **[(CONTINUE)]
        ->Ren402

=== Ren402 ===
<i>Then, it hits you. You were supposed to hang out with Ren tonight.</i>

*[(Pick up your phone and call Ren).]
    <i>You pick up your phone and call Ren. She answers after just one ring. You hear her characteristic voice on the other end:</i>
    ->Ren403
*[(Continue relaxing).]
    <i>You continue relaxing in the house, enjoying your time off work, alone.</i>
    **[(CONTINUE)]
        <i>But lo and behold, you get a call from Ren not an hour later. You answer it, and hear her characteristic voice on the other end:</i>
        ->Ren403
        
=== Ren403 ===
Hey, {player_name}! How have you been?

Are you still on for tonight? I'll pick you up soon.
->Ren404

=== Ren404 ===
+[Ok, see you soon!]
    Yes! I'm ready. See you soon.
    **[(CONTINUE)]
        ->Ren405
+[Where are we going?]
    We're going to the donut shop in town. It's open twenty-four hours, and a cool hangout. Lot of people from school will be there!
    ->Ren404
+[I'm tired.]
    I promise we don't have to stay that long! It's important that we celebrate your new job. We must go tonight!
    ->Ren404
    
=== Ren405 ===
<i>Just as the evening grows, you hear a car pull up to the house. You get out and greet Ren. It seems to be just her, which means she must have driven herself. She greets you back:</i>

Hi, {player_name}!

#SFX: CarOff
->Ren405a

=== Ren405a ===
+[Let's go.]
    <i>Ren says goofily:</i>
    Okay, let's go for a little cruise.
    **[(CONTINUE)]
        ->Ren406
+[I didn't know you could drive.]
    Haha, yeah. I'm kind of new at it still, and kind of nervous about it, so I try not to.
    
    I mean, oops! I didn't mean to tell you that. Forget I said anything! You're safe with me!
    ->Ren405a    
+[(Get in the passenger seat).]
    ->Ren406

=== Ren406 ===
<i>You get in the passenger seat and the two of you drive across town.</i> 

<i>You tell Ren all about your new job. She's genuinely interested, but you can tell something's on her mind. You're not sure if she's just focused on the road, though.</i> 

<i>At least her breaking is smooth.</i>

#Ambiance: CarMoving
*[(CONTINUE)]
    <i>She then brings up Kai:</i>
    
    { visitKai == false:
    You ever hear from Kai? He said he wanted to hang out with you.
        **[It's been a long week.]
            Don't feel bad at all. You've been busy.
            ->Ren407
        **[Whoops.]
            Yeah, don't feel bad at all. You've been busy.
            ->Ren407
        **[I know.]
            Don't feel bad at all. You've been busy.
            ->Ren407
    }
    { visitKai == true:
    I heard you visited Kai! I'm so jealous you got to hear his stuff.
    ->Ren407
    }
        
=== Ren407 ===
I heard Kai's really nervous about his show, though. I hope he can pull through.
*[He'll be fine.]
    Yeah, I hope so. ->Ren408
*[He better!]
    Haha, yeah! ->Ren408
*[Yeah, who knows what'll happen.]
    Well. ->Ren408
    
=== Ren408 ===
Good thing he has friends, right?
        
*[(CONTINUE)]
    <i>You feel the car park and hear the engine turn off. You have arrived. You get out of the car with Ren, and carefully head to the front door with her.</i>
    
    <i>Ren exclaims:</i>
    
    Wow, the line for the donut shop is out the door! Not by much though. We'll wait. Did I mention they have vegan donuts here, too?
    
    #Ambiance: CrowdLight
    #SFX: CarOff
    **[(CONTINUE)]
        <i>As you wait in line, you realize: you don't have any money to pay for donuts. For either of you. You must have given off some sort of look, because Ren notices immediately and says:</i>
        
        Don't worry. I got you. I invited you, after all. Besides, you said you're getting paid on your next shift, right? After that, you're paying!
        ***[Deal.]
            ->Ren409
        ***[I don't want you to pay for me.]
            {player_name}. Trust me when I say: I'm happy to.
            ->Ren409
        ***[Fine.]
            ->Ren409

=== Ren409 ===
<i>You move along the line, and are now inside.</i>

<i>Ren gasps and freezes.</i>

*[What is it?]
    ->Ren410
*[Are you okay?]
    ->Ren410
*[(Say nothing).]
    ->Ren410

=== Ren410 ===
Oh, no. Oh, no.

I didn't know he was going to be here tonight! No, no, I planned this out perfectly!

<i>Suddenly, you're next in line, and are called to the cashier.</i>

*[(CONTINUE)]
    <i>The cashier speaks directly to Ren. They clearly know each other. A snide male voice, about your age, speaks:</i>
    
    Well, Ren. Didn't expect you here. Brought a friend? Who's this? You're not going to tell me?
    
    Just give me your order.
    **[(CONTINUE)]
        <i>You've never heard Ren speak so timidly and quietly. She practically mumbles:</i>
        
        We'd just like a, um, blueberry muffin. Two of them. And two hot chocolates.

        ***[(CONTINUE)]
            <i>The boy responds, in an almost accusatory tone:</i>
            
            Two hot chocolates? It's summertime. Don't you want something colder?
            
            <i>Ren responds, very meekly:</i>
            
            No.
            ****[(CONTINUE)]
            <i>The boy groans, and gets everything together. Then he says:</i>
            
            I'm going to give this to your friend, or whatever they are.
            
            <i>He puts everything into your hands. Ren takes one of the hot chocolates, and makes sure you don't drop anything.</i>
            
                *****[(CONTINUE)]
                <i>As if waiting for you to leave, he irately says:</i>
                
                There you go. Goodnight. Next!
                
                <i>You hear a few voices in the donut shop go silent.</i>
                ->Ren411
                
=== Ren411 ===
*[Goodnight.]
    ->Ren412
*[(Say nothing and walk away).]
    ->Ren412
*[That was the worst service I've ever gotten.]
    ->Ren411a
*[You can't talk to her like that!]
    ->Ren411a

=== Ren411a ===
Oh, I'm sorry. Are you her little guardian?

*[(Walk away).]
    ->Ren412
*[That's right. And you're a huge jerk.]
    ->Ren411b
*[You're a coward.]
    ->Ren411b
*[Are you her little father?]
    <i>You hear other kids inside react to this excitedly.</i> ->Ren411b

=== Ren411b ===
<i>The boy, clearly taken aback, huffs:</i>

Whatever.

->Ren412

=== Ren412 ===
<i>Ren tugs on you, voice wobbling:</i>

Come on, {player_name}, let's go.

*[(CONTINUE)]
    <i>Ren leads you outside. You don't sit at an outside table as you had expected. Instead, you walk down a nearby street with her. You sense that she's very emotional by the way she's walking, and you continue to follow her.</i>
    
    <i>The walk together is quiet for a while.</i>
    
    #Ambiance: None
    **[(CONTINUE)]
        <i>You hear the rustle through the trees around you. The air is warm tonight.</i>
        
        <i>Then, you hear the river.</i>
        
        <i>You sit beside each other on a bench overlooking the water.</i>
        
        #Ambiance: River
        ***[(CONTINUE)]
            <i>Ren, after having a moment to collect herself, sniffles briefly. Then says to you:</i>
            
            That was James. He's, um.
            
            He's my boyfriend.
            
            ****[You have a boyfriend?!]
                ->Ren413
            ****[You're joking, right?]
                ->Ren413
            ****[He's a loser.]
                ->Ren413

=== Ren413 ===
Okay, I know. That's what everybody says.
    
But we have something. It's just different from the rest of my life. I can't explain it.
    
I mean, sure he's a lot sometimes, but he always knows what's best for me.
*[You need to leave him. Immediately.]
    ->Ren413a
*[You can't be serious.]
    I know it's bad. ->Ren413a
*[I mean, you do you.]
    You're not saying it, but ->Ren413a    

=== Ren413a ===
I know what you're thinking. But I don't want to hurt him! We can all work on personal problems. I have them, too. Besides, I've stayed in town this long for him! I even rejected the abroad program for him.
        
Okay, I know that sounds really bad. But it's okay. Really. Besides, I have my book I'm working on!
    *[(CONTINUE)]
        <i>You clearly sense Ren is distraught. You can tell she's holding back tears. You listen to the river.</i> 
        **[(CONTINUE)]
            <i>Ren sighs.</i>
        
            I know.
            ***[(CONTINUE)]
                <i>She drives you home. The ride is mostly silent.</i> 
                
                <i>As you arrive, she finally speaks, in a low voice:</i>
                
                {player_name}. I'm lucky to have a friend like you. I've actually never told anyone what I told you tonight. And most definitely nobody's ever seen me like that.
                
                Hearing myself say these things out loud is different, you know?
                
                #Ambiance: None
                ****[(CONTINUE)]
                    Anyway. You have a goodnight. Okay?
                    *****[Goodnight, Ren.]
                        ->Ren414
                    *****[Take care of yourself.]
                        ->Ren414
                    *****[Don't let him hold you back.]
                        ->Ren414

=== Ren414 ===
<i>You hear Ren's head nod against the car seat. She quietly says goodnight again, and drives off.</i>

#SFX: CarStart

/// END CHAPTER 4 
/// Expected carried VARs to Chapter 5:
/// jobScore, company_name, job_name, player_name

->END


