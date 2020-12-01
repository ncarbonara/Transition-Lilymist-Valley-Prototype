VAR player_name = "Sam"
//Start

ObjectiveEd presents:
<i>Lilymist Valley</i>

#SFX: TrainWhistle
*[(CONTINUE)]

<i>Please take your seats at this time. Have your tickets ready to show the conductor.</i>

#Ambiance: TrainCrowd
**[(CONTINUE)]
->Train00

=== Train00 ===
<i>The sound of a wooden sliding door is heard from the front of the passenger cabin, followed by paced footsteps, headed in your direction. The footsteps gently stop next to you and an energetic, female voice speaks:</i>

Hey! Mind if I sit here?

#SFX: DoorSlidingWood
+[Go ahead.]
    Thank you. I'll put my bags right up here.
    
    Jeez. Could it be any harder to find a seat on this train? I leave my seat for one second.
    ->Train01
+[I prefer to sit alone.]
    I promise I'll only be on the train for a bit longer.
    
    Hard enough to find a place to sit on this train, you know. I leave my seat for one second.
    ->Train01
    
=== Train01 ===
#SFX: LuggageMove

*[(CONTINUE)]
Pah. I can't believe that guy.
++[What happened?]
    ->Train02
++[(Remain silent.)]
    ->Train02

=== Train02 ===
   I was just getting a snack in the back cabin when more passengers were coming on. When I came back, some guy was sitting in my old seat!

+[What did you do?]
    Well, nothing. He just seemed kind of scary and I didn't want to deal with it, to be honest with you.
    
    Er, and he was sleeping. There's that too.
    
    Not very heroic of me, I guess. Thanks for letting me hang out with you, at least.

    ++[No worries.]
        ->Train03
    ++[I can go talk to him, if you'd like.]
        Eh. Don't worry about it. More peaceful in this cabin anyway.
        ->Train03
    ++[You should stick up for yourself.]
        Eh. Don't worry about it. More peaceful in this cabin anyway.
        ->Train03

+[That's too bad.]
    Eh. Don't worry about it. More peaceful in this cabin anyway.
        ->Train03
+[I can go talk to him, if you'd like.]
    Eh. Don't worry about it. More peaceful in this cabin anyway.
        ->Train03

=== Train03 ===
My name's Ren, by the way.-> ChooseYourName

=== ChooseYourName ===
What's your name?
+[Sam]
    ~ player_name = "Sam"
    ->NameAreYouSure
+[Alex]
    ~ player_name = "Alex"
    ->NameAreYouSure
+[Charlie]
    ~ player_name = "Charlie"
    ->NameAreYouSure
+[Ash]
    ~ player_name = "Ash"
    ->NameAreYouSure
+[Sky]
    ~ player_name = "Sky"
    ->NameAreYouSure
+[Jordan]
    ~ player_name = "Jordan"
    ->NameAreYouSure
+[(Enter a new name.)]
<i>Tap the "Enter name here" to type in your name, then press "Continue."</i>
    #Create Custom Name Input Field
    ++[(CONTINUE)]
        ->NameAreYouSure
        
=== NameAreYouSure ===
Your name is {player_name}?
+[Yep, that's it!]
    ->Train04
+[Not quite.]
    ->ChooseYourName
    
=== Train04 ====
Wow, I love that name. Nice to meet you.

*[(CONTINUE)]
    ->Train05
    
=== Train05 ===
Can I ask you a weird question? I noticed the white cane next to you. You're blind, right? I'm sorry, I don't mean to make judgements. I'm just really impressed with how you're able to get on this train and go travel all by yourself. 

#SFX: TrainWhistle
+[It's not so hard.]
    ->Train06
+[It's tough, not going to lie.]
    Oh. Right. I'm sorry I asked.
    ->Train06
+[Can we not talk about this?]
    Oh. Right. I'm sorry I asked.
    ->Train06
    
=== Train06 ===

A close friend of my family is also blind. I'm always so curious. I'm happy to help you out on the train if you ever need it.

Like, seriously, if you need a sandwich or something at the snack cabin, I'm your gal! Just make sure nobody takes my seat, you know?

*[(CONTINUE)]
-> Dog_Bark

=== Dog_Bark ===
<i>You hear a dog bark happily at some passengers behind you, it runs up the aisle towards the other end of the passenger cabin. You hear Ren take in a deep breath through her nose, her voice directed at the window as she speaks.</i>

#SFX: DogBark
**[(CONTINUE)]

Ah, smell those pine trees! We must be entering the mountains. Home sweet home.

What brings you traveling this way anyway, {player_name}?

***[I'm moving.]
    Moving? Wow, really? A whole new world ahead of you! I'm envious.
    I'm sure you're gonna make lots of new friends, wherever you're going.
    ****[(CONTINUE)]
    ->Train07
***[Just on a summer trip.]
    Wow, really? Sounds adventurous. I wish I could say the same.
    I'm sure you're going to have a very cool trip, wherever you're going.
    ****[(CONTINUE)]
    ->Train07
***[I'm not telling you!]
    Hey, no sweat! Just making conversation.
    ****[(CONTINUE)]
    ->Train07
    
=== Train07 ===

I miss home, personally. It's going to be good to get back. My mom makes this delicious cherry pie every Thursday. Makes about ten of them every week, actually!
    
Ain't just for us, though. She runs a café in town. I can almost taste 'em now. Ooo just thinking about it makes me all happy.

Thanks for listening to me talk, by the way. Cheering me up a lot. 
    
*[(CONTINUE)]

<i>You hear the sound of the conductor moving down the passenger cabin, asking for tickets. Soon, he stops by you and Ren, and speaks in a stately manner:</i>

Tickets, please.

<i>You hear Ren rummaging through her bag and respond to the conductor.</i>

Here's mine.

    #SFX: DoorSlidingWood

**[(Hold your ticket up).]
    <i>The conductor speaks:</i>
    ->Train07a
**[I didn't get a ticket.]
    <i>The conductor speaks:</i>
    ->Train07b
**[(Do nothing).]
    <i>The conductor speaks:</i>
    Ahem. Tickets, please.
        ***[(Hold your ticket up).]
            ->Train07a
        ***[I didn't get a ticket.]
            ->Train07b
        ***[(Do nothing).]
            ->Train07b
    
=== Train07a ===
Thank you.

Lilymist Valley is the next stop. Do enjoy the journey.

#SFX: TicketPunch2
*[(CONTINUE)]
    ->Train08
    
=== Train07b ===
It's illegal to enter trains without a ticket, you know. I'm afraid I'm going to have to ask you to get off at the next station.

Lilymist Valley is the next stop. Do enjoy the journey.

#SFX: TicketPunch1
*[(CONTINUE)]
    ->Train08
    
=== Train08 ===
<i>As the conductor walks away, Ren immediately exclaims excitedly:</i>

Hey, what? You're going to Lilymist Valley too! That's unbelievable!

Wait. I don't recognize you at all. And I would recognize anyone our age in that town. Er, at least I'm assuming we're close to the same age.

*[(CONTINUE)]

Wait. Hang on. old man Scott mentioned he had family coming over this summer! And you two have strikingly similar facial features. Er, that's a compliment. He's not ugly or anything. He's the family friend I was talking about. 

He's your uncle, am I right? Tell me I'm right!
    
    **[You're right!]
        ->Train09
    **[Uh, maybe.]
        ->Train09

=== Train09 ===    
    Wow! Yeah, you basically have the coolest Aunt and Uncle in town.
    
    Oh man, this is so exciting! You're going to have my mom's cherry pie for sure. Well, after you get settled.

    You must be staying for the summer. Are you going to get a job in town?
        ***[Yup!]
            Nice! I'm going back to a job, myself. Had to get a summer job. Well, to host at the River House Café. Family business and all.
            ->Train10
        ***[We'll see.]
            ->Train10
        ***[I can't. I'm blind.]
            Hey, don't talk like that! There are plenty of jobs that you can do just as well as sighted people.
            ->Train10        
        
=== Train10 ===
I can help you get a job in town if you'd like. I totally know some places that are hiring!

<i>You hear the conductor, in a sternly monotone voice, speaking over the intercom:</i>

Now arriving at: Lilymist Valley.

*[(CONTINUE)]
Ahh, this is so exciting! It's been so nice to meet you, {player_name}.

We definitely have to catch up in town some time.

Can I help you with your bags?
**[That would be great, thank you.]
    I've got you.
    
    <i>You hear Ren huff as she grabs your bags.</i>
        ->Train11
**[All I have is my backpack.]
    Wow, you really know how to travel.
        ->Train11
**[No, I've got it.]
        ->Train11

=== Train11 ===
//Ambiance: TrainCrowd should end here 
VAR renTrain = false 

Okay. Here we are. We'd better get ready to hop out.

#Ambiance: CrowdLight
#SFX: LuggageMove

*[Right behind you.]
<i>You collect your things and use Ren's footsteps to navigate safely to the train's door. You can sense a few others waiting for the door around you.</i> 
    ~ renTrain = true
        ->Train12
*[Mind if I take your arm?]
Of course. Come on!

<i>You collect your things and take Ren's arm. She guides you to the door.</i>
    ~ renTrain = true
        ->Train12
*[Okay. See ya.]
Okay. Uh, bye.

<i>You collect your things and carefully navigate towards the train's door.</i>
        ->Train12

=== Train12 ===
<i>As the train comes to a stop, the conductor speaks over the intercom:</i>

Lilymist Valley. Please watch your step when exiting the train.

*[(CONTINUE)]

<i>Soon, the door opens.</i>

{ renTrain == true: 
<i>You hear Ren's voice again.</i>

Here it is. You're gonna step down right. About. Here!
}

#SFX: DoorTrainOpen

**[(CONTINUE)]
    ->Train13

=== Train13 ===
//All train sounds should stop by now.

<i>You manage to make your way down the train's step, and onto the station platform. You feel the sun on your face. The smell of the forested, mountain air permeates your senses. People are continuing to shuffle in and out of the train, and moving in different directions across the platform.</i>

#Ambiance: CrowdOutdoor

*[(CONTINUE)]
{player_name}! Dear! So good to see you.

<i>You hear the familiar sound of your Aunt Tilly shout to you from across the bustle of the station.</i>

{ renTrain == true: 
<i>Ren shuffles next to you and says as she leaves:</i>

There's your ride. See you out there, {player_name}! Good to meet you.
}
**[(CONTINUE)]
    ->Drive01

=== Drive01 ===
<i>Your Aunt Tilly's voice continues to be heard as she approaches you.</i>

Ooh, come here. Give your auntie a big hug.

Goodness, you've gotten so big! Let's get you to the car.

<i>You walk with your Aunt Tilly out of the train station towards her car. She helps you climb the step to her pickup truck.</i>

*[(CONTINUE)]
->Drive02

=== Drive02 ===
<i>The two of you drive off together.</i>

So? How was the trip?

#SFX: CarStart
#Ambiance: CarMoving

*[Good.]
    It's been so long since I've taken that train. Nothing but good memories about it.
    ->Drive03
*[I made a friend!]
    Oh! How wonderful! I saw you walk out of the train with Ren. Was it her? That girl has been such a big help to your Uncle Scott over the years.
    ->Drive03
*[It was a nightmare.]
    I'm sorry to hear that. Those trains are always so packed in, too. Well, I'm happy you've made it in one piece, at least. 
    ->Drive03

=== Drive03 ===
<i>Aunt Tilly slows the truck down. You feel the car curve around an uphill, winding road.</i>

I'm so excited to hear what you've been up to.

*[(CONTINUE)]
<i> You ride along and chat with Aunt Tilly for just a few minutes before you feel the truck turn onto a dirt driveway. You remember this driveway and the distinct pine smell. The truck rocks gently up the driveway.</i>

<i>Aunt Tilly begins describing things around you.</i>

To the right over there is our tiny little farm. There's a small barn there where we keep our old horse, Whitney. We can go say hi to her later, if you'd like. I'm sure she'll remember you!

**[(CONTINUE)]
->Drive04

=== Drive04 ===

Well, here we are! Let me get your bags, dear.

I'm sure your Uncle Scott will be out here any minute.

#Ambiance: None
#SFX: CarOff

*[(CONTINUE)]
->Home01

=== Home01 ===


<i>Not a moment sooner, you hear the creaky front door swing open, and Uncle Scott's deep, hoarse voice call out to you.</i>

There they are! You've come a long way, haven't you? Been a while since you've been here. When was it, ten or so years back?

Here, let me help you out with your bags.

#SFX: DoorOpenCreak

*[(CONTINUE)]
->Home02

=== Home02 ===

<i>You hear Aunt Tilly gathering everything from the car, and immediately refute:</i>

I got it, dear. You just let {player_name} in.

<i>Uncle Scott replies:</i>

I can do that. Come on in, {player_name}.

#SFX: LuggageMove

*[(CONTINUE)]
<i>You walk with Uncle Scott into the house. The instant you step through the door, you feel warm and cozy. An incredible food aroma is coming from somewhere in the house. Uncle Scott says:</i>
->Home03

=== Home03 ===
Here, let me take you to the living room. You can sit down there.

#SFX: DoorCloseCreak

    +[What's that smell?]
        I was cooking a little something while your Aunt Tilly went to go get you. I hope you're going to be hungry later.
            ->Home04
    +[Okay.]
            ->Home04
    *[Where can I put my coat?]
        Oh, let me take that for you. I'm going to put it on the coat rack just next to the door, here.
        
        You take off your coat and hand it to Uncle Scott as he puts it on the coat rack behind you, to your right.
            ->Home03NoDoorSound
            
=== Home03NoDoorSound ===
Here, let me take you to the living room. You can sit down there.

    +[What's that smell?]
        I was cooking a little something while your Aunt Tilly went to go get you. I hope you're going to be hungry later.
            ->Home04
    +[Okay.]
            ->Home04

=== Home04 ===
<i>Uncle Scott takes you to a large sofa in the living room. You sit and relax for the first time since you left home.</i>

<i>You hear Uncle Scott take a seat across from you. The two of you begin to catch up, and talk about what each of you have been up to in the last several years.</i>

*[(CONTINUE)]
->Home05

=== Home05 ===
<i>Before too long, you hear the front door creak open again, and Aunt Tilly speaking.</i>

Look who showed up!

#SFX: DoorOpenDog

*[(CONTINUE)]
->Home06

=== Home06 ===
<i>Your uncle exclaims enthusiastically:</i>

Stew! How ya doing, boy? {player_name}, meet Stew. Stew, meet {player_name}.

#SFX: DogMove

*[You have a dog?]
    ->Home07
*[Hi, Stew!]
    ->Home07
*[I don't like dogs.]
   Oh. That's fine. He's just happy to see you. He'll do his own thing for the most part, or help your Aunt in the yard.
    ->Home07

=== Home07 ===
    Stew's helped me out for years now. My best four-legged pal.
    
*[(CONTINUE)]
<i>Suddenly, you remember; Uncle Scott is blind too! He completely lost his sight  eight years ago. You haven't visited with each other since his accident, nor have ever asked much about it. Stew is his seeing-eye dog.</i>

**[(CONTINUE)]
<i>Uncle Scott talks to his dog.</i> 

I bet you smell dinner cooking, don't you?

<i>Uncle Scott's tone normalizes as he speaks to you again.</i> 

You too might consider getting a seeing-eye dog now that you're over sixteen. It's a long process, and takes some training, but I can help you out with it some day.

***[(CONTINUE)]
<i>Aunt Tilly soon interjects:</i>

Not before you have some food in your belly. Looks like your dinner's ready.

<i>Your Uncle Scott gets up handily. You sit at the dinner table, feeling for each plate and utensil as they're given to you. Uncle Scott serves everything on his own. The three of you, and Stew, all start eating.</i>

****[(CONTINUE)]
<i>At dinner, Uncle Scott explains things:</i>

I like to do the cooking and cleaning. Your Aunt Tilly does a lot of the hard work and gathering of food for our kitchen.

<i>Aunt Tilly continues:</i>

Yup. For example, tomorrow I'm waking up bright and early to collect eggs from the chicken coop. Those will go right onto our bagels tomorrow for breakfast, after they're cleaned. 

*****[(CONTINUE)]
<i>Uncle Scott soon speaks up again:</i> 

Hey, speaking of work, and being over sixteen, you wanted to find a job in town when you got here, right?
******[Yes. I'm looking for work.]
    Lots of good places in town hiring, I'm sure. I haven't looked much, but I know you could probably find some leads online, then go to them in person.
    ->Home08
******[Not sure yet.]
    Don't worry about that. I'm sure you'll have a better idea of what you want after a day or two.
    ->Home08

=== Home08 ===
<i>Aunt Tilly speaks in agreement:</i>

Hey, that's not a bad idea. We can fill in applications together tomorrow.

*[(CONTINUE)]
<i>Uncle Scott recourses:</i>

Oh, Till. {player_name} probably doesn't wanna jump right into it like that.

**[No, it's fine. I'm ready.]
    <i>Aunt Tilly says with a smile:</i>
    
    As eager as I remember. We can work on job hunting in the morning, then.
    ->Home09
**[A day or two to think would be nice.]
    <i>Aunt Tilly says in a level tone:</i>
    
    That sounds fair to me. You might even like a tour through town tomorrow.
    ->Home09
**[Filling in applications doesn't sound like fun.]
    <i>Aunt Tilly, with graceful understanding, says:</i>
    
    The worst part about getting a part time job! I think you'll have a great time working once you get all of this application stuff out of the way.
    ->Home09

=== Home09 ===
There are so many places in town who I'm sure would love to have you.

*[(CONTINUE)]
<i>After dinner, you spend some more time with your Aunt and Uncle, before your Aunt Tilly shows you to your room.</i>

Layout is simple enough in here. You've got a closet on the wall straight ahead here, a desk on the right, and the bed is on the left, with a little table next to it. I put your suitcase on the ground next to the closet.

Bathroom is out the door, to the left, then straight ahead down the hallway. Layout in there should be what you're used to, but you can call any one of us if you need something.

**[Thanks for everything, Aunt Tilly.]
    ->Home10    
**[Okay, goodnight.]
    ->Home10
**[I can handle it.]
    ->Home10

=== Home10 ===
VAR openDoor = 0

Love you, {player_name}. You have a good night. I think it's going to be a good summer.

Oh. Want the door closed? The dog might come visit you if it's open.

*[Yeah, you can close it.]
    Okay, dear. Goodnight!
    ->Home11
*[Keep it open!]
    Okay, dear. Goodnight!
    ~ openDoor = 1
    ->Home11
    
=== Home11 ===
<i>You eventually head to bed, and relax for a moment whilst lying down. You've made it to your Aunt and Uncle's house, after a long journey to Lilymist Valley. You think about the idea of having a job and working in this new town. Whilst dwelling on the thought of these things, you fall asleep.</i>

{ openDoor == 1:
#SFX: FootstepsLeave
}
{ openDoor == 0:
#SFX: DoorCloseCreak
}

*[(SLEEP)]
->Home12

=== Home12 ===
{ openDoor == 1: 
<i>You wake up to Stew jumping on your bed, and licking your face, before he jumps down and heads downstairs. It's morning. You feel like you slept so well that you barely realized time had passed.</i>
#SFX: DogMovingLick
}

{ openDoor == 0:
<i>You wake up slowly and peacefully from bed. It's morning. You feel like you slept so well that you barely realized time had passed.</i>
#SFX: Rooster
}

*[(CONTINUE)]
->Home13

=== Home13 ===
<i>You get dressed and maneuver your way downstairs, using your cane. You think you hear the sizzling of a pan coming from the kitchen.</i>

<i>As you get downstairs, you hear Uncle Scott's voice:</i>

Thought I heard you coming down. Take a seat. I'm fixin' breakfast.

#Ambiance: PanSizzle

*[Thank you.]
    ->Home14
*[Anything I can do to help?]
    No. Don't worry. Almost done here.
    ->Home14
*[(Take a seat).]
    ->Home14
    
=== Home14 ===
<i>You take a seat at the dining room table. Uncle Scott's calm, graveled morning voice speaks to you:</i>

{player_name}, your Aunt Tilly's shuffling the chickens around in the coop outside. Should be in any minute. Me and Stew need to go to work pretty soon.
    
    *[Where do you work?]
        I'm still a practicing chiropractor. I help realign peoples' spines, making them feel better, and helping them lead healthier lives. Surprisingly, little has changed since I went blind. I can't diagnose X-rays as well anymore, but so much of my career is physical, and people-oriented.
        ->Home15
    *[No problem.]
        ->Home15
    *[(Say nothing).]
        ->Home15
    
=== Home15 ===
Anyway, you just relax for now. How about a coffee? 

*[Sure.]
    <i>A coffee is poured in a cup next to you.</i>->Home16
*[No, thanks.]
    ->Home16

=== Home16 ===
<i>You hear the creaky front door open and close. Aunt Tilly exclaims from across the house:</i>

Woo. Hens are putting me through the ringer. Already bout halfway done for the day.

<i>Uncle Scott acknowledges her:</i>

You're just in time.

#SFX: DoorOpenCloseCreak

*[(CONTINUE)]
<i>Aunt Tilly takes off her boots, and sits at the table with you as Uncle Scott serves three plates of food. After breakfast, you help Uncle Scott with the dishes, as he leaves with Stew for work. </i>

#Ambiance: None

**[(CONTINUE)]
->Home17

=== Home17 ===
<i>You can hear Aunt Tilly putting her boots back on, when you hear a knock on the door.</i>

Who could that be?

#SFX: DoorKnock

*[(CONTINUE)]
<i>Aunt Tilly answers the door</i>

Well, hello!

<i>You hear the familar sound of a girl's voice.</i>

Hi, Tilly! How are you doing this morning?

<i>Your Aunt Tilly replies:</i>

I'm good, Ren! So good to see you. Won't you come on in?

<i>You hear Ren entering, then speaking again:</i>

Well, I know you're busy and Scott's going to work soon, so I just wanted to see if {player_name} wanted to hang out?

#SFX: DoorOpenCreak

**[Hi Ren!]
    Hey {player_name}! Good to see you, um, not on the train. Seems like you've settled in nicely. 
    ->Home18
**[Not interested.]
    Hey {player_name}! Good to see you, um, not on the train. Seems like you've settled in nicely.
    ->Home18
**[(Say nothing and remain hidden in the kitchen).]
    ->Home18
    
=== Home18 ===
<i>Your Aunt Tilly chimes in:</i>

{player_name} is thinking about getting a job in town, but I was just thinking that it might be better to take a little tour first.

*[(CONTINUE)]
<i>Ren responds excitedly:</i>
Oooh! I can totally help out with that. I am the master of job hunting!

<i>You can hear Ren walking into the kitchen, completely giving you her attention.</i>

**[(CONTINUE)]
There's so much you can do to get any kind of job. Most people don't even realize it. You don't just apply and show up for an interview. There's so much to it! I mean, that's what my mom's told me, at least.
    ->Home19

=== Home19 ===
+[Sure, let's go!]
    ->Home20
+[Like what?]
    Well, first of all, it's always good to show up in person at some point, instead of just applying online and forgetting about it. Puts a face to the name, ya know? Then, there are all the little tricks you can do in the interview, like dressing nicely, shaking hands. All that stuff.
    ->Home19
+[I don't know.]
    Come on. I know you can do it.
    ->Home20
    
=== Home20 ===
Hey, at the very least, I'll be your tour guide through town today. You'll know Lilymist Valley inside and out.

*[(CONTINUE)]
<i>Your Aunt Tilly, still at the door putting on her boots, joins in.</i>

Okay, {player_name}. You should go with Ren. You're in good hands with her. I think it'll be a good idea to get acquainted with the town, too. I'm going to be around here all day while your Uncle's at work. Oh, no. Don't worry about me, I'm at my happy place here. You two have fun. Say hi to your mom for me, Ren.

<i>Ren replies:</i>

I will! Come on, {player_name}, we'll walk towards downtown! It's not far. I've got a few places in mind we could visit. It'll be a tour and a job hunt all at once!

**[(CONTINUE)]
<i>You and Ren head out of the house, and walk down the driveway together.</i>

Want me to help you walk around? We can link arms, if you'd like.
***[Sure.]
    ->Home21
***[I've got my cane here, thank you.]
    Ah. Okay then.
    ->Home21
***[I don't need your help.]
    Ah. Okay then.
    ->Home21

=== Home21 ===
It won't be too long. Once we get closer to the heart of town, the sidewalk will be a little more paved.

<i>You notice that sure enough, after walking down a bit of inclined path for a few minutes, the concrete beneath you becomes reliably flat.</i>

*[(CONTINUE)]
I had this idea. I'm trying to think of places that are hiring. I think the Lilymist Hotel would be a good bet. I saw a flier at the diner that said they were hiring pool receptionists. No experience needed! Crazy. 

Lilymist Hotel is a big deal here. Lots of rooms, with a view of Lilymist Falls. It's on the other side of town. We'll check that out, at least. Let me think of a few other places.

**[(CONTINUE)]
->Enroute01

=== Enroute01 ===
In the meantime, there is a lot around here. We're on the main road to town now. Well, one of them, at least. 

To our right is just a steep mountainous hill. The town is kind of ahead of us, and on the left. But the hill subsides a little bit ahead, and we'll see the library pretty soon. 

#Ambiance: TrafficLighter

*[(CONTINUE)]
->Enroute02

=== Enroute02 ===
<i>You and Ren continue walking down the road, as you begin to hear the sound of gentle fountains, and a few more cars.</i>

Here's the library, on your right. Lots of good things here, not just books.

Oh! What is this? Speaking of job hunting.

<i>Ren pauses for a moment.</i>

#Ambiance: FountainTraffic

*[What is it?]
    Oh! I'm so sorry.
    ->Enroute03
*[(Say nothing).]
    ->Enroute03
*[You know I can't see what you're looking at, right?]
    Oh! I'm so sorry.
    ->Enroute03
    
=== Enroute03 ===
There's an open resume workshop happening today, here at the library. Anyone can join at any time!
->Enroute04

=== Enroute04 ===
VAR hasResume = false

{player_name}, we can totally get a resume made for you right now!

+[I'm in. Let's do it.]
    ->Resume01
+[What's a resume?]
    A resume's just a piece of paper that summarizes who you are. It lists your job experiences, your interests, skills you'd bring to the job, all that stuff.
    ++[Got it.]
        ->Enroute04
    ++[Aren't those things already on an application?]
        Yeah, but the application is so boring, and resumes are so much more personable. Plus, the employer won't ever print out an online application to have at your interview. Instead, you can have a resume that they can look at. It's your chance to present yourself. Your way.
        ->Enroute04
+[Not interested.]
    Okay, let's keep going.
        ->Enroute05

=== Resume01 ===    
// RESUME SEGMENT
// Kill all sounds
<i>You walk into the library. When the door behind you slides closed, the sounds of the outside world immediately drown out. You ask for the location of the resume workshop, and are led to a large room. A woman speaks to you:</i>

Hello! You must be here for the resume workshop. My name is Alba, pleased to meet you.

Would you like a basic run-down before we get started?

#Ambiance: None
->Resume02

=== Resume02 ===
+[Sure. Give me an overview of resumes.]
Well, resumes are basically just summaries of everything that an employer would want to know about you. It's broken into a few sections: Basic information, work experience, education, and work skills. 

You can also put your everyday interests, just so the employer can learn a little more about you.

Would you like me to repeat that, or are you ready to get started?
    ->Resume02
+[That's okay. I'm ready.]
    Delightful! Let's get to it!
    
First, we'll fill in some basic information at the top. Not too difficult. It will be your first and last name, followed by your contact information—a phone number and Email address. Simple, right?
++[(CONTINUE)]
    ->Resume03

+[I've changed my mind. I don't want to make a resume.]
    Oh! My oh my. That's quite all right. Are you sure?
        ++[I'm sure. I need to leave.]
            Well, do come by if you need any assistance. We'll be here for the next couple of weeks.
            ->Enroute05
        ++[Actually, I'm ready. Let's make a resume.]
            Would you like a basic run-down before we get started?
            ->Resume02
    
=== Resume03 ===
<i>You give Alba your basic information, your Email, and your phone number, as she inputs it all. She makes a few extra clicks at the computer, then speaks again.</i>
    
Lovely. Thank you, {player_name}! Let me just make some quick formats to make it look pretty. 

#SFX: TypingShort

+[(CONTINUE)]
Okay. Next, we'll lead with your work and volunteer experience. Do you have any? Anything at all? Even if it was unpaid, we can put it down.
    ++[I picked up trash on the beach with a volunteer group.]
        Oh, splendid! I'll put that down. We'll make it sound professional, like: "Beach Cleanup Crew," and include the city it was for. There's a bit more information we can put here, too.
        +++[(CONTINUE)]
            ->Resume04
    ++[I volunteered at a snack bar.]
        Oh, splendid! I'll put that down. We'll make it sound professional, like: "Snack Bar Cashier," and include the location it was for. There's a bit more information we can put here, too.
        +++[(CONTINUE)]
            ->Resume04
    ++[I volunteered at an animal shelter.]
        Oh, splendid! I'll put that down. We'll make it sound professional, like: "Animal Shelter Caretaker," and include the city it was for. There's a bit more information we can put here, too.
        +++[(CONTINUE)]
            ->Resume04
    ++[Nothing, no.]
        Quite fine. We'll change the formatting a little bit to focus on your education and potential skills.  
        +++[(CONTINUE)]
            ->Resume05

=== Resume04 ====
<i>Alba asks you more details about the job, the approximate months in which you did your volunteer work, and what your specific job duties were. Then, she starts typing, and speaks to you again.</i>

The reason why I've asked you what your responsibilities were at that place, was because we can make them sound like work skills that are transferable to places you're applying to.

#SFX: TypingShort

+[(CONTINUE)]
For example, you said you worked with other people, and you were told what to do by somebody else. So I typed here "worked with a team towards a common goal." This tells employers that you're ready to be on a team like theirs, despite not having a part-time job prior. Professional language goes a long way.

++[(CONTINUE)]
->Resume05

=== Resume05 ====
Let's move on. The next section is going to be your Education section. This is usually for college, or trade schools, or art schools, or things like that. But for you, we can just put your High School and just type a few things to make it look extra nice.
    
First, let me ask—have you taken any special classes, sports, or AP classes? Or were a part of any clubs that were significant to you? We can put these things on there.
    +[I'm in the Robotics Club.]
        That's very cool! My son did that when he was in High School. You're reminding me of him a lot. I'm just going to put down "Robotics Club," okay?
        ->Resume06
    +[I took a drama class.]
        An actor! Good at playing other roles, which means you must also be good at understanding different people? We can absolutely put that. I’m going to put down "Drama Classes," okay? 
        ->Resume06
    +[I'm in Model United Nations.]
        Wow, impressive! A future leader of the world? We need some good people out there making all the decisions. I’m going to put down "Model United Nations," okay? 
        ->Resume06
    +[Nothing.]
        Okay. No problem.
        ->Resume06

=== Resume06 ===
Let me get some more information about your school.

+[(CONTINUE)]
->Resume06a

=== Resume06a ===
<i>Alba asks you more details about your school, your expected graduation year, and anything else that would be relative to your hireability. Once again, she speaks to you after typing a bit more.</i>

You're from out of town then, huh? Exciting! I'm looking forward to your job prospects here in Lilymist.

#SFX: TypingShort

    ++[(CONTINUE)]
    Okay, we're about halfway done. Here come the more personalized parts. First, work skills. We have two types of skills to put here: Soft skills, and hard skills.
    
        +++[(CONTINUE)]
        ->Resume07
        
=== Resume07 ===
Hard skills are what most people think of when they think of "skills." Things like cooking experience, computer program proficiencies, fluent Spanish. Those are all hard skills.

Soft skills are more people-related things, like "personable communicator," "problem solver," "critical thinker," and "quick learner." Those are all soft skills.

+[(CONTINUE)]

    So, I've given you some suggestions, but can you think of some good hard and soft skills to include?
    ++[Let me think.]
        ->Resume08
    ++[Could you go over hard and soft skills again?]
        ->Resume07

=== Resume08 ===
<i>You tell Alba some qualities about yourself which you think would make good resume material. She helps you reword a few of them to sound professional, and starts typing again.</i>

#SFX: TypingShort

+[(CONTINUE)]
Great work so far! We're almost done. The last part of the resume is the "Interests" section. In this part, you'll tell the employer what makes you unique as a person, not just a worker. It makes you less of an application, and more of an individual.
    
    ++[(CONTINUE)]
        One tip. A lot of people will put basic things like "art," or "sports," or "music,” but you should be more specific. Showing personality stands out. So, instead of putting music, you might say what?
        
        +++[Hip-Hop.]
            Hip-Hop, yeah!->Resume09
        +++[Pop Music.]
            Pop, yeah! ->Resume09
        +++[Folk Music.]
            Folk, yeah! ->Resume09
        +++[Heavy Metal.]
            A metal head! ->Resume09

=== Resume09 ===
You've got the hang of it! Let's do this again with a couple more of your interests.

+[(CONTINUE)]
->Resume09a

=== Resume09a ===
<i>You and Alba come up with a few more personal interests to share on your resume. After some finishing touches are made, and formatting tweaked, Alba speaks again.</i>

Okay, I think that's it! We're all set! Let me print a few copies out for you so you have some, and I'll send the document to your email so you'll always have it!

#SFX: TypingShort

+[(CONTINUE)]
    ->Resume10

=== Resume10 ===
<i>After a few clicks, Alba gets up and heads over to the printer in the room. You can hear the sound of five pages being printed. She comes back with everything.</i>

#SFX: Printing

+[(CONTINUE)]
There you are. And here's a nice folder to put them in. Now go out there and put that shiny new resume to good use!
~ hasResume = true
->Resume11

=== Resume11 ===
+[Thank you.]
    See you around. Good luck!
    ++[(CONTINUE)]
    ->Resume12
+[What do I do with it?]    
    You can do all kinds of things with it now. You can submit it with the online application, you can give it to the manager after applying. Heck, you can even give it to the manager before applying! At the very least, it's good to bring it to your interview. Gives them something to look over and helps them ask less generic questions.
    ->Resume11
+[See ya.]
    See you around. Good luck!
    ++[(CONTINUE)]
    ->Resume12

=== Resume12 ===    
<i>You leave the library. You immediately hear the sound of Ren's voice. She was waiting for you the whole time.</i>

Hey, you did it! Let me see.

Wow, look at these. That's incredible!

#Ambiance: FountainTraffic

+[Thanks for waiting for me.]
    ->Resume13
+[I'm just glad it's over.]
    ->Resume14
+[Don't you have better things to do?]
    ->Resume13

=== Resume13 ===
Hey, it's no problem. I'm just happy to help. Lots of cute ducks out here, anyway.
->Resume14

=== Resume14 ===
You're lucky you got the help. I had to do mine all by myself! My first one. Was so, so bad. This one is very good though.

+[(CONTINUE)]
->Enroute05

=== Enroute05 ===
<i>On the street ahead, you hear the sound of a skateboard coming towards you. Ren shouts out:</i>

Hey! Kai!

// Ambiance Note: FountainTraffic is continued here regardless of whether player declined resume segment or not. #Ambiance here is redundant?
#Ambiance: FountainTraffic
#SFX: SkateboardStop

*[(CONTINUE)]
->Enroute06

=== Enroute06 ===
<i>You hear the sound of a skateboard stopping, followed by a friendly, teenage male voice:</i>

Hey, Ren! Who's your new friend?

*[(CONTINUE)]

<i>Ren replies:</i>

This is {player_name}. Scott and Tilly are their Uncle and Aunt. {player_name}, meet Kai. Kai, meet {player_name}.

<i>Kai greets you:</i>

Nice to meet you, {player_name}! Hip. I was just cruising through town. Good to see a new face around here who's our age.

**[(CONTINUE)]
<i>Ren continues introducing you:</i>

{player_name} is looking to get a job in town. I'm taking them on a city tour, if you wanna come? I was thinking we could stop by the Lilymist Hotel first? Maybe stop by the waterfalls?

{hasResume: {player_name} just got a sparkly new resume, too!}

***[(CONTINUE)]
<i>Kai accepts the invitation:</i>

Sweet. Yeah, I'll come along. I don't wanna take away from your time with Ren, {player_name}, so just let me know if you ever want me to bail.
****[Not a problem at all.]
    Well, then count me in!
    ->Enroute07
****[Do whatever you want.]
    Well, then count me in!
    ->Enroute07
****[You can stay. For now.]
    Alright. I can respect that.
    ->Enroute07
    
=== Enroute07 ===
<i>You walk with Ren and Kai for a few minutes down the sidewalk. You get to talk to Kai for a little while, and after he asks about it, you explain your blindness as simply as you can. He doesn't seem to mind, nor treat you any differently. </i>

#Ambiance: TrafficLighter

*[(CONTINUE)]
->Enroute08

=== Enroute08 ===
<i>You continue to hear the sounds of cars passing gently alongside you, before hearing the very faint sound of a waterfall in the distance. Kai brings it up:</i>

Can you hear it, {player_name}? That's Lilymist Falls.
    
#Ambiance: WaterfallTraffic

*[(CONTINUE)]
<i>Ren, with a clear knowledge of the area, continues:</i>

And there's a big, long building right next to it. That's the Lilymist Hotel. It's a big deal here. Lots of conventions are held there instead of in the big city sometimes. Which means lots of guests. Which means lots of work available!

Let's go inside.
**[(CONTINUE)]
->HotelVisit01

=== HotelVisit01 ===
<i>The three of you walk inside the Lilymist Hotel, and enter the lobby. Ren tells you about the surroundings:</i>

Here it is, the Lilymist Hotel. Basically, it's got a very tall ceiling, and a rustic, wood-and-stone vibe.

Hey, wait here. I've got an idea.

#Ambiance: DistantChatter

*[(CONTINUE)]
<i>Kai, in a pondering tone, asks:</i>

What are you up to, Ren?

<i>Ren, half-deviously, says:</i>

I'm just going to ask the concierge a question.

    **[(CONTINUE)]
    ->HotelVisit02
    
=== HotelVisit02 ===
<i>You hear Ren walk away from you, and in the distance, you hear her asking a question to someone:</i>

Excuse me, I was wondering if you guys were hiring for any positions right now?

<i>You then hear the concierge respond:</i>

Yes, of course. There are a few positions available. Would you like to apply? Do you have a resume?

<i>Ren replies:</i>

No, thank you. I'm just asking for a friend. What positions are available for those without experience?

#SFX: FootstepsLeave

*[(CONTINUE)]
Well, the most in-demand job we have for anyone without experience would be the recent opening for a receptionist in our pool and recreation area outside. You'd apply online for that one. Would you like the hiring manager's number?

<i>Ren responds happily:</i>

Yes, please and thank you!

<i>The concierge writes something down on a note, and hands it to Ren.</i>

Have a fine day, young lady.

**[(CONTINUE)]
->HotelVisit03

=== HotelVisit03 ===
<i>Kai is astonished:</i>

Uh, Ren? What the?

<i>Ren comes back, confidently:</i>

That's how it's done! Here you go, {player_name}! You can apply online and call that number later if you'd like, or if you're not hearing back after you apply.

#SFX: FootstepsCloser

*[You knew exactly what to say.]
    ->HotelVisit04
*[Uh, thank you?]
    ->HotelVisit04
*[There's no way that works every time.]
    ->HotelVisit04
    
=== HotelVisit04 ===
You'd be surprised at how well asking that question works. Doing things in person or by phone gets things done. It's awkward at first, but you just gotta put that aside and go for it.

Last time I'm gonna do that for you though, so don't get used to it!

*[(CONTINUE)]
Anyways, we've got the information we need. Ready to go?
    **[Let's go]
            ->Enroute09
    **[Could we visit the pool area on the way out?]
        Uh, sure!
        
        <i>You visit the hotel pool area outside with Ren and Kai. You can hear splashing here and there, along with some sounds of children playing, but nothing too chaotic. After observing the atmosphere for a bit, you decide you have all the information you need.</i>
        
        #Ambiance: None
        ***[(CONTINUE)]
            ->Enroute09
    **[Wait. (Approach the concierge).]
        Oh, you're doing it!
        ->HotelVisit05
        
=== HotelVisit05 ===
<i>You approach the concierge, in the same way Ren did. He notices you, and asks:</i>

Can I. Help you?
->HotelVisit06

=== HotelVisit06 ===
#Ambiance: DistantChatter

*[Nevermind.]
    Very well. Do have a fine day.
    <i>You head back to Ren and Kai, and make your way outside.</i>
        **[(CONTINUE)]
            ->Enroute09
*[Are you guys hiring right now?]
    Erm, yes. As I've just told your friend, we're hiring receptionists for our pool area. You're welcome to apply online as well. Anything else I can do for you right now?
        ->HotelVisit06
*[I'd like to speak to the hiring manager right now, if possible.]
    I'm afraid he's quite indisposed right now. Do apply online, it's very simple. He'll most certainly call you back if you're the right fit. I believe your friend has the number to call and follow-up just in case. Is there anything else you need?
        ->HotelVisit06

=== Enroute09 ===
<i>The three of you leave the Lilymist Hotel. As you continue down the road with Ren and Kai, now taking a right out of the hotel, you continue to hear the waterfall in the distance.</i>

<i>The three of you take a left to cross a street. Ren mentions a river on the right, currently hidden behind the trees, with a beautiful botanical garden beside it. You hear the sound of a person running across the street towards the garden. Ren calls out. </i>

#Ambiance: WaterfallTraffic

*[(CONTINUE)]
    Hey, Sandra!
    
    <i>Sandra is out of breath, and responds kindly, but quickly:</i>
    
    Hey, Ren. Good to see you. Can't talk much, I think I'm gonna be late for work.
    
    **[(CONTINUE)]
        Ooh! You work for the botanical garden here, right?
        
        <i>Sandra responds, hurriedly:</i>
        
        Um, the nursery plant store next to the garden, but yes! Fun job. Was lucky for me that they're hiring a ton right now. Anyway, I've gotta run. I don't wanna lose my job!
        
        <i>Ren replies:</i>
        
        Okay, bye!
        ***[(CONTINUE)]
            ->Enroute10

=== Enroute10 ===
VAR hasSoil = false
VAR impoliteNursery = false
VAR resumeNursery = false
VAR resumeBakery = false

{player_name}, are you thinking what I'm thinking? You could go in and ask. You could ask the "are you hiring" question!

*[I'll just apply online.]
    Okay, let's keep going.
    ->Enroute11
*[No.]
    ->Enroute11
*[Good idea! Let's go.]
    <i>Kai says encouragingly:</i>
    
    All right! We're doing this. I gotta get my mom a present for her b-day anyway.
    **[(CONTINUE)]
        ->NurseryVisit01

=== NurseryVisit01 ===
//All outdoor sounds should cease

<i>The three of you walk into the nursery shop. It immediately smells like soil and flowers.</i>

#Ambiance: None

*[On second thought, let's go.]
    <i>You leave the nursery with your friends.</i>
    **[(CONTINUE)]
        ->Enroute11
*[(Walk up to the counter).]
    <i>You walk up to the counter.</i>
    
    **[(CONTINUE)]
    <i>The female clerk notices you, says in a neutral tone:</i>
        
        Yes? How can I help you?
        ***[I'd like to purchase a five-pound bag of soil, please.]
            ~ hasSoil = true
            <i>You purchase a five-pound bag of soil from the cashier. Then, she asks:</i>
            
                Okay, anything else?
                ****[Nope, thank you.]
                    ->NurseryVisit01a
                ****[Yeah, are you hiring right now?]
                    ->NurseryVisit01b
                ****{hasResume == true} [I would like to apply to work here. Could I give you my resume?]
                    ->NurseryVisit01c
        ***[Nevermind.]
            ->NurseryVisit01a
        ***[Are you hiring right now?]
            ->NurseryVisit01b
        ***{hasResume == true} [I would like to apply to work here. Could I give you my resume?]
            ->NurseryVisit01c

=== NurseryVisit01a ===
~ impoliteNursery = true
Um, okay. Take care.

<i>You leave the nursery with your friends.</i>
    *[(CONTINUE)]
        ->NurseryVisit02

=== NurseryVisit01b ===
Uh, yes. I think? Feel free to apply online, then somebody will take a look and give you a call if your availability is good.
    ->NurseryVisit01d

=== NurseryVisit01c ===
//if has resume
~ resumeNursery = true

Of course you can! Feel free to apply online, then we'll take a look and give you a call.
    ->NurseryVisit01d

=== NurseryVisit01d ===
*[Thank you. Have a good day.]
    Not a problem. Have a good day, and good luck.

    <i>You leave the nursery with your friends.</i>
        **[(CONTINUE)]
        ->NurseryVisit02
*[Okay.]
    ->NurseryVisit01a
*[Could I get the hiring manager's number or email?]
    Uh. She doesn't really like to give out her information for that. She'll call you if it's a good match, though.
    **[Okay. Thank you.]
        Not a problem. Have a good day, and good luck.

        <i>You leave the nursery with your friends.</i>
        ***[(CONTINUE)]
        ->NurseryVisit02
    **[That's weird.]
        ->NurseryVisit01a
    **[Can't you give me anything?]
        ~ impoliteNursery = true
        I'm sorry, but no. Have a good day.
        ***[(CONTINUE)]
            ->NurseryVisit02

=== NurseryVisit02 ===
<i>As you head out the door, Kai breathes a sigh of relief:</i>

Whew, that seemed like a tough one. I bet that's going to be a little more difficult of a job to get into.

{ hasSoil == true: 
At least we got some soil out of it!
}

#Ambiance: TrafficLighter

*[(CONTINUE)]
<i>Ren chimes in:</I>

{ impoliteNursery == true:
You should be careful to be as polite as possible. Remember not to be pushy. You're already being assertive by asking something like that.
}

{ impoliteNursery == false:
Honestly, you did good. You were polite. You weren't pushy. You can add that to places to apply online to!
}
    **[(CONTINUE)]
        ->Enroute11

=== Enroute11 ===
<i>As you head onto the main road again, Kai asks:</i>

You guys wanna go to the Crumble Café? It's on the way back.

<i>Ren speaks:</i>

That's exactly where I was thinking of ending the tour. Let's get a bite to eat! Amazing coffee and pastries. You'll love it, {player_name}.

#Ambiance: TrafficLighter

*[(CONTINUE)]
    <i>You walk with Ren and Kai down the road towards the direction you came from. Before long, you begin to hear a slightly larger concentration of car traffic.</i>
    **[(CONTINUE)]
        ->Enroute12
    
=== Enroute12 ===
    We're in Old Town now. Some people just call it Downtown. Not really any skyscrapers or anything, but it's a fun place to hang out. The theatre is just over there, with some cool shops and restaurants. But we're going to the Crumble Café for a snack. Right here!

#Ambiance: TrafficLight

*[(CONTINUE)]
->BakeryVisit01

=== BakeryVisit01 ===
<i>You enter the café bakery, and hear a cute little bell ring as the door opens. Ren exclaims:</i>

Mmm-mmm! So many things to choose from.

#Ambiance: CrowdLight
#SFX: TinyBell

*[(CONTINUE)]
    <i>You order a pastry and coffee with Ren and Kai from a sweet old man at the counter. You recognize the sound of a milk steamer machine. Coffee must be taken seriously here. You hear a teenage female voice behind the counter, calling out peoples' names. You, Kai, and Ren sit on a tiny table inside. Ren eventually asks:</i>
    
    Well, what do you think of the town so far, {player_name}?
    **[Love it.]
        There's a lot to like about it. Summer's my favorite time of year here, too.
            ->BakeryVisit02
    **[It's nice.]
        There's a lot to like about it. Summer's my favorite time of year here, too.
            ->BakeryVisit02
    **[I miss home.]
        I can't even imagine what it was like for you, coming to a new place like this.
        
        <i>Kai adds:</i>
        
        We're here if you need anything.
    
        <i>Ren concurs:</i>
        
        That's right.
        
        ***[(CONTINUE)]
            ->BakeryVisit02

=== BakeryVisit02 ===
<i>Just then, Kai gets a phone call. His ringtone is like music from another planet.</i>
    
*[(CONTINUE)]
    Uh, sorry guys. I have to take this call. I'm gonna step outside.
    
    <i>You hear Kai get up and leave through the front door, whose cute little bell rings again. You and Ren continue talking while listening to the sounds and conversations of the coffee shop. Soon, Ren starts muttering to herself while stirring her spoon around the edges of her coffee cup.</i>
    
    **[(CONTINUE)]
        So far, we've got the hotel, the nursery, hmmm. What else can we add to your job hunting list? There's gotta be at least one more place.
        
        <i>She continues stirring her spoon thoughtfully.</i>
        ***[(CONTINUE)]
             ->BakeryVisit03

=== BakeryVisit03 ===
<i>Before too long, you hear the door swing open again, bells chiming. Ren exclaims:</i>

What is it, Kai? You look astonished!

<i>Kai responds:</i>

Um, well you know that guy, Carl?

#SFX: TinyBell

*[(CONTINUE)]
    You mean Carlos Moreno?
    
    <i>Kai responds affirmatively:</i>
    
    Yup. So, his mom is letting him have a summer party at his house with a ton of people. And they wanted a DJ.
    
    <i>Ren hangs on the edge of her seat excitedly:</i>
    
    So they invited you?!
    
    **[(CONTINUE)]
        Not only did they invite me. They offered to pay me.
        
        <i>Ren is thrilled:</i>
        
        Whaat!! They must really trust you. That's such a big deal!!
    
        ***[(CONTINUE)]
            <i>Kai responds with a thoughtful gravity to his voice:</i>
            
            I know. It'll be my first paid gig as a DJ ever! I'm pumped. Wow. I have to plan everything out to make it perfect.
    
            {player_name}, I hope you're planning on coming. This will be a totally great time! Carl's house is on the river, and his parents have a little dock to party on.
            
            ****[I wanna go!]
                Yeah! I'll make sure you're going. You can hang out with me at the turntables if you don't want to meet tons of people there.
                ->BakeryVisit04
            ****[I don't know.]
                You'll have a few weeks to decide. You're my plus one if you want it! You can hang out with me at the turntables if you don't want to meet tons of people there.
                ->BakeryVisit04
    
=== BakeryVisit04 ===
<i>Ren, suddenly says out of nowhere:</i>

Hey, I know!

What about here? {player_name}, you could work at the Crumble Café! You could work in the bakery!

*[That's an idea.]
    ->BakeryVisit05
*[Hmm, I'll think about it.]
    ->BakeryVisit05
*[Eh.]
    ->BakeryVisit05

=== BakeryVisit05 ===
Yeah! I bet they have applications online, too.

We can ask them, if you'd like?

*[I'd rather not.]
    No problem. You can probably look it up online anyway.
        **[(CONTINUE)]
            ->Enroute13
*[Could you do it?]
    Hey, it's not my job hunt! Well, I do like helping you so much. Ugh, I guess. Just because I like you.
    
    **[(CONTINUE)]   
        <i>Ren gets up and asks the girl at the counter if they are hiring. She asks the old man, and he responds with some details about filling in an application on the internet. Ren thanks them and returns to you.</i>
        
        And just as I expected. They're doing it all online. All confirmed!
        
        Welp. Ready to go, guys?
        ***[(CONTINUE)]
            ->Enroute13
            
*[I'll do it. (Walk up to the counter).]
    ->BakeryVisit06

=== BakeryVisit06 ===
<i>You walk up to the counter, towards the sound of the person working at the milk steamer.</i>

*[Hello, could I ask you a question?]
    <i>You hear the sound of the milk steamer stopping for a bit. The barista girl talks a little louder over the noise.</i>
    
    What's that? Oh, yeah. Sure.
    ->BakeryVisit06a
*[Excuse me, could I please talk to a manager?]
    ->BakeryVisit07
*[(Say nothing).]
    <i>You stand there at the counter saying nothing. You hear the sound of the milk steamer stopping for a bit. The barista girl talks a little louder over the noise.</i>
    
    Do you need something?
    ->BakeryVisit06a

=== BakeryVisit06a ===

*[Nevermind.]
    Okay, then.
    
    <i>You hear the sound of the milk steamer starting up again.</i>
    ->Enroute13
*[Are you guys hiring right now?]
    ->BakeryVisit07
*[I'd like to apply to work here, could I give you my resume?]
    ->BakeryVisit07

=== BakeryVisit07 ===
Uh. Let me have you talk to the owner.

<i>The barista shouts across the counter to your left.</i>
    
Hey, Herb! You got a minute?

*[(CONTINUE)]
    <i>A vigorous old man replies from the other side of the café.</i>
    
    Yes, I'll be right there.
    
    <i>You hear the man walk over to you from the other side of the counter.</i>
    
    Yes, how can I help you?
        **[Nevermind.]
            Okay, then.
                ->Enroute13
        **[Are you guys hiring right now?]
            Oh. Yeah! We have a few positions open actually. You're going to want to apply over the internet, and we'll call you back. Do you have a resume?
                ***[No, I don't.]
                    Okay. Well, yeah. Just apply online and we'll give you a call if it checks out.
                    ->BakeryVisit08
                ***[Not on me.]
                    Okay. Well, yeah. Just apply online and we'll give you a call if it checks out.
                    ->BakeryVisit08
                ***{ hasResume == true }[I do, actually. Here you go.]
                    ~ resumeBakery = true
                    Excellent. Yeah, I think you'll fill in an application online, and if it checks out, I'll give you a call in a few days. 
                    ->BakeryVisit08
        **{ hasResume == true }[I'd like to apply to work here. Could I give you my resume?]
            ~ resumeBakery = true
                    Excellent. Yeah, I think you'll fill in an application online, and if it checks out, I'll give you a call in a few days. 
                    ->BakeryVisit08

=== BakeryVisit08 ===
+[Okay, thank you]
    Don't mention it.
    ++[(CONTINUE)]
        ->Enroute13
+[Just like that?]
    Yup. Have a good one out there.
    ++[(CONTINUE)]
        ->Enroute13
+[Alright. Bye.]
    Yup. Have a good one out there.
    ++[(CONTINUE)]
        ->Enroute13

=== Enroute13 ===
<i>You leave the Crumble Café with Ren and Kai, and congregate together on the sidewalk outside. Kai speaks decidedly:</i>

Well, I better get home. Got a lot to think about today.

<i>Ren responds brightly:</i>

Yeah! Kai! I am so excited for you. I better get home eventually, too.

#Ambiance: TrafficLight
#SFX: TinyBell

*[(CONTINUE)]

<i>Kai turns and speaks to you.</i>

It was nice meeting you today, {player_name}! I'll see ya again soon. Good luck on everything. 

**[(CONTINUE)]
<i>Kai takes off on his skateboard, towards the part of town closer to the river. Ren, whose voice is directed towards the direction Kai went, speaks to you:</i>

I can't believe he got a DJ gig. That's incredible.

***[Good for him.]
    ->Enroute14
***[What now?]
    ->Enroute14
    
=== Enroute14 ===
Well, I've gotta head home eventually. I can walk you home the way we came back? We've actually sort of made it back to the library, which is right across the street over there.

#Ambiance: TrafficLight

*[Let's go.]
    ->Enroute15
*[I'd rather walk alone.]
    Are you sure? Okay. You know yourself better than me. Don't get lost out there, okay?
    **[(CONTINUE)]
        ->WalkAlone01
        
=== WalkAlone01 ===
<i>Ren walks you all the way to the library and says goodbye. Now facing the library, do you go left or right?</i>

#Ambiance: FountainTraffic
#SFX: FootstepsLeave

*[Left.]
    ->WalkAlone02a
*[Right.]
    <i>You go right. You walk very carefully down the sidewalk, using your cane to maneuver.</i>
    ->WalkAlone02b
*[(Call out to Ren).]
    <i>You call out Ren's name as loud as you can, hoping that she's still, somehow nearby.</i> ->WalkAloneHelp
    
=== WalkAlone02a ===
// LEFT 
<i>You go left. You walk very carefully down the sidewalk, using your cane to maneuver.</i>
    
<i>Before too long, you don't recognize the road you're on at all.</i>

#Ambiance: TrafficLight

*[Keep going.]
    ->WalkAlone02c
*[Turn back.]
    <i>You turn around, and start heading back towards the library. You continue past the library.</i>
    **[(CONTINUE)]
        ->WalkAlone02b

=== WalkAlone02b ===
// RIGHT
<i>You hear less cars driving beside you, and notice the sidewalk give way to some less-paved inclined paths. You wonder if this is the right direction, but continue onward.</i>

#Ambiance: TrafficLight

*[(CONTINUE)]
->WalkAlone02d

=== WalkAlone02c ===
<i>Eventually, you begin to hear the waterfall you heard earlier today, faintly in the distance. But not from a direction that you're familiar with. You're completely lost.</i>

#Ambiance: WaterfallTraffic

*[(CONTINUE)]
->WalkAloneHelp

=== WalkAlone02d ===
// all sounds shall cease

<i>Eventually, you're walking down a much flatter, much more familiar road. You continue down towards the end of a seemingly familiar road. Before it turns right, you take a sharp left down a dirt driveway, and somehow make your way to your Aunt and Uncle's front door.</i> 

<i>It creaks as you open it, and you hear Aunt Tilly's voice.</i>

*[(CONTINUE)]
->BackHome01

=== WalkAloneHelp ===
<i>After a few moments, you hear someone running towards you, followed by Ren's familiar voice:</i>

Ahh, I knew you'd miss me.

Alright, I'm taking you home. Don't try and argue about it. I've got your back. I'll be right beside you.

#Ambiance: FountainTraffic

*[(CONTINUE)]
    ->Enroute15

=== Enroute15 ===
<i>With Ren's help, you head out of the main town, and up the small mountain paths you went down earlier today.</i> 

<i>You can smell the crops on the surrounding farm patches as you make it home after some time.</i>

#Ambiance: TrafficLighter

*[(CONTINUE)]
<i>When you arrive at your doorstep, Ren speaks to you again:</i>

Here's your stop. It was cool to get to know you a little more, {player_name}. I'm happy to help you out any time you need, or if you just wanna hang out sometime. I'll give you mine and Kai's number. I hope we helped out a little.

#Ambiance: None

    **[You went above and beyond.]
        Good. I'm happy to have helped. ->Enroute16
    **[Good meeting you.]
        You too. ->Enroute16
    **[Goodnight.]
        Yup. ->Enroute16
    
        
=== Enroute16 ===
    
Have a goodnight.

<i>Ren leaves, and you make your way to the front door. It creaks as you open it, and you hear Aunt Tilly's voice. </i>

#SFX: DoorOpenCloseCreak

*[(CONTINUE)]
    ->BackHome01

=== BackHome01 ===
Well! There you are. You've made it home, just in time for dinner. Your Uncle should be home any minute now.

{ hasSoil == true:
Is that a bag of soil? How thoughtful. You can just stick it by the door there.
}

Did you have a good time with Ren, dear? I'm looking forward to hearing all about your walk around town today.

*[(CONTINUE)]
    <i>You and your Aunt talk about your day as you make your way over to the living room couch on your own. You plop down. You must have walked a couple miles today.</i>
    
    I'm happy you got to make it to the Crumble Café. They make all their own stuff from scratch, you know. And guess who provides them their eggs? My hens outside! 
    
    **[(CONTINUE)]
        ->BackHome02
        
=== BackHome02 ===
<i>The door creaks open. You hear Stew get let off his leash, and run to you. While Stew greets the family, your Aunt Tilly talks to Uncle Scott.</i>

I made dinner tonight, chickpea. Welcome home. Go get washed up and we'll sit. You too, {player_name}.

#SFX: DoorOpenDog

*[(CONTINUE)]
    <i>You get washed up and ready for dinner. Aunt Tilly made a wonderful dinner. You sit with your aunt and uncle at the table. You're not sure who's cooking you've liked more so far. Uncle Scott starts to speak:</i>

Well, had a big day, then? Did you find any places you wanted to apply to?
**[One or two.]
    ->BackHome02a
**[Yeah, all of them!]
    ->BackHome02a
**[Eh.]
    ->BackHome02b


=== BackHome02a ===
Hah! Eager as I remember.
->BackHome02b

=== BackHome02b ===
I'm sure you'll find at least one that interests you. You work hard at any of 'em, you'll have a good time.

But now my question is: are you prepared to start working?

*[What do you mean?]
    ->BackHome03
*[Absolutely.]
    ->BackHome03
*[I don't know.]
    ->BackHome03

=== BackHome03 ===
Being mentally ready to work is important. Your whole life adheres to a new schedule.

And don't think that just because you're blind doesn't mean you can't amount to what a job asks of you. Not for one second. 

We have to work extra hard to prove ourselves in this world, but if you're good at showing how capable you are, you can get almost any job you want.

*[Thanks for the advice.]
    ->BackHome04
*[If you say so.]
    ->BackHome04
*[You don't get it.]
    ->BackHome04

=== BackHome04 ===
All right, well. Let's change the subject, I'm sure you want a break from it. I know you'll decide what's best for you.

*[(CONTINUE)]
    <i>After dinner, you and your uncle play one of his favorite board games together, while your Aunt Tilly watches her favorite knitting show. </i>
    
    <i>As you start getting tired, you say goodnight, shower, and head to bed.</i> 
    
    <i>Tomorrow's a new day. What life soon awaits you in Lilymist Valley?</i>

**[(Complete Chapter 1)]
    ->Complete_Chapter_1
// sound effect?

=== Complete_Chapter_1 ===
#CHAPTER COMPLETE: 1
    ->DONE
    
=== Chapter_2_Start ===
Chapter 2 begins!
    ->END

// To Chapter 2
// Carried over VARs:
//      - hasResume
//      - resumeNursery
//      - resumeBakery

    


