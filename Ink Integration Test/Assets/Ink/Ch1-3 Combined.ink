VAR player_name = "Sam"

//Vars for making a resume and visiting the three employers
VAR hasResume = false
VAR resumeNursery = false
VAR resumeBakery = false
VAR impoliteNursery = false
VAR succeeded_in_person_hotel = false
VAR succeeded_in_person_nursery = false
VAR succeeded_in_person_cafe = false

//Vars for applying to jobs
VAR applied_to_hotel_pool = false
VAR applied_to_coffee_shop = false
VAR applied_to_plant_shop = false
VAR number_of_applied_jobs = 0

//Vars for following up about applications
VAR currentlyFollowingUpWith = ""
VAR have_contact_info = false
VAR succeededFollowUpHotel = false
VAR succeededFollowUpNursery = false
VAR succeededFollowUpCafe = false

//Vars for whether/not the player got interviews, and also which interview they're choosing to go for currently
VAR earned_hotel_interview = true
VAR earned_nursery_interview = true
VAR earned_cafe_interview = true
VAR current_interview_employer = ""

//Vars for clothes shopping
VAR moneyGiven = 120
VAR moneySpent = 0
LIST shoppingCart = badShoes_Masc, goodShoes_Masc, greatShoes_Masc, badBottom_Masc, goodBottom_Masc, greatBottom_Masc, badTop_Masc, goodTop_Masc, greatTop_Masc, badShoes_Femm, goodShoes_Femm, greatShoes_Femm, badBottom_Femm, goodBottom_Femm, greatBottom_Femm, badTop_Femm, goodTop_Femm, greatTop_Femm
VAR currentDivert = ->Shopping304
VAR askedAboutClothingFit = false
VAR renMakingPlayerPutSomethingBack = false
VAR well_dressed = false

//Var for packing your things before the interview
VAR items_packed = 0
VAR checked_for_stains = false
VAR physical_notetaker = true

//Vars for the waiting room / interview
VAR knows_where_reception_desk_is = false
VAR turns_spent_waiting = 0
VAR cellphone_silenced = false

//Var for determing whether the player got the job or not
VAR succeeded_interview = false

//Var for tracking the player's ongoing "interview score"
VAR interview_score = 0

//Vars for whether/not the player hung out with their friends at various points
VAR ren_theater = false
VAR kai_music_festival = false

//---------- CHAPTER 1 ----------
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
hasResume = false

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
            ->HotelVisitScoringCheck
    **[Could we visit the pool area on the way out?]
        Uh, sure!
        
        <i>You visit the hotel pool area outside with Ren and Kai. You can hear splashing here and there, along with some sounds of children playing, but nothing too chaotic. After observing the atmosphere for a bit, you decide you have all the information you need.</i>
        
        #Ambiance: None
        ***[(CONTINUE)]
            ->HotelVisitScoringCheck
    **[Wait. (Approach the concierge).]
        Oh, you're doing it!
        ->HotelVisit05
        
=== HotelVisit05 ===
<i>You approach the concierge, in the same way Ren did. He notices you, and asks:</i>

Can I help you?
->HotelVisit06

=== HotelVisit06 ===
#Ambiance: DistantChatter

*[Nevermind.]
    Very well. Do have a fine day.
    <i>You head back to Ren and Kai, and make your way outside.</i>
        **[(CONTINUE)]
            ->HotelVisitScoringCheck
*[Are you guys hiring right now?]
    Erm, yes. As I've just told your friend, we're hiring receptionists for our pool area. You're welcome to apply online as well. Anything else I can do for you right now?
        ->HotelVisit06
*[I'd like to speak to the hiring manager right now, if possible.]
    I'm afraid he's quite indisposed right now. Do apply online, it's very simple. He'll most certainly call you back if you're the right fit. I believe your friend has the number to call and follow-up just in case. Is there anything else you need?
        ->HotelVisit06

===HotelVisitScoringCheck===
//Used to determine the results of the player's hotel visit

//CURRENTLY EMPTY, BECAUSE NOTHING SCORING-SIGNIFICANT HAPPENS IN THE HOTEL SCENE

->Enroute09

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
impoliteNursery = false
resumeNursery = false
resumeBakery = false

{player_name}, are you thinking what I'm thinking? You could go in and ask. You could ask the "are you hiring" question!

*[I'll just apply online.]
    Okay, let's keep going.
    ->NurseryVisitScoringCheck
*[No.]
    ->NurseryVisitScoringCheck
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
        ->NurseryVisitScoringCheck
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
        ->NurseryVisitScoringCheck
        
===NurseryVisitScoringCheck===
//Used to determine the results of the player's nursery visit

{
    -resumeNursery == true && impoliteNursery == false:
        ~succeeded_in_person_nursery = true
}

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
            ->BakeryVisitScoringCheck
*[Could you do it?]
    Hey, it's not my job hunt! Well, I do like helping you so much. Ugh, I guess. Just because I like you.
    
    **[(CONTINUE)]   
        <i>Ren gets up and asks the girl at the counter if they are hiring. She asks the old man, and he responds with some details about filling in an application on the internet. Ren thanks them and returns to you.</i>
        
        And just as I expected. They're doing it all online. All confirmed!
        
        Welp. Ready to go, guys?
        ***[(CONTINUE)]
            ->BakeryVisitScoringCheck
            
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
    ->BakeryVisitScoringCheck
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
                ->BakeryVisitScoringCheck
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
        ->BakeryVisitScoringCheck
+[Just like that?]
    Yup. Have a good one out there.
    ++[(CONTINUE)]
        ->BakeryVisitScoringCheck
+[Alright. Bye.]
    Yup. Have a good one out there.
    ++[(CONTINUE)]
        ->BakeryVisitScoringCheck
        
===BakeryVisitScoringCheck===
//Determines the result of the player's bakery/cafe visit

{
    -resumeBakery == true:
        ~succeeded_in_person_cafe = true
}
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

//---------- CHAPTER 2 ----------
=== Chapter_2_Start ===
<i>You crawl slowly out of bed. You remember that you need to look for a job today. But first, breakfast.</i>

<i>As you crawl comfortably out of bed, you think you hear your uncle in the kitchen.</i>

<i>You navigate down the hallway, and find him turning the pages of a newspaper.</i>

Mornin' sunshine. Take a seat, I'll fix you up somethin'.

#SFX: Rooster

*[Thanks, Uncle Scott.]
Yep! Comin' right up.
    ->Morning201
        
*[Okay.]
Yep! Comin' right up.
    ->Morning201

*[You know you don't have to, right?]
    Yeah, don't worry. You can cook me somethin' tomorrow.
    ->Morning201

===Morning201===
Anyway, what'll it be? Eggs and sausage? Oatmeal and berries? Or just some cereal?
    
*[Eggs and sausage, please!]
    ->Morning202
    
*[Oatmeal and berries, yum.]
    ->Morning202
    
*[Cereal sounds good.]
    ->Morning202

===Morning202===
Good idea. I'll have what you're havin'.

<i>After some time, Uncle Scott serves the food to each of you as he takes his seat. He takes a sip of coffee.</i>

<i>Just then, your phone rings. Caller ID speaks the name: Ren. You pick up and answer:</i>

#SFX: PhoneVibrate

*[Hey, Ren!]
    ->Morning203

*[Hello?]
    ->Morning203

*[What do you want?]
    ->Morning203

===Morning203===
Hey, you! Did I catch you at a bad time?

*[Not at all.]
    Well, I know you wanted to apply to some places today, so I wanted to just wish you good luck!
    ->Morning204

*[I'm just eating.]
    Well, I know you wanted to apply to some places today, so I wanted to just wish you good luck!
    ->Morning204

*[Yeah.]
    We can talk later if you want, but I just wanted to wish you good luck real quick!
    ->Morning204
    
===Morning204===
If you wanted to go for Lilymist Hotel, they're hiring a Pool Receptionist. I don't know if they're "actively hiring", but they seemed interested. Could be pretty fun, not to mention prestigious. You'll apply online for that one.

+[(CONTINUE)]
    After talking to my friend Sandra, I know for a fact the Greenmoss Nursery is hiring a Nursery Assistant. Lots of outdoor work. They're hiring anyone apparently. Their application is online too.
    
    ++[(CONTINUE)]
        Guh, the Crumble Café would be such a cool place to work, too. Seems like it's so difficult to get in, but I feel like the owner is pretty open. No harm in applying. Also online, I think.
        
        +++[(CONTINUE)]
            And yeah. That's all I've got. Did you need me to repeat any of that?
            
            ++++[No, I've got it.]
                ->Morning205
            
            ++++[Could you repeat that again?]
                ->Morning204
                
===Morning205===
Okay, well good luck! Tell me how it goes when you come over to the River House tonight.

*[Wait, what?]
    ->Morning206

*[Are you scheduling things for me?]
    ->Morning206

===Morning206===
Oh! I'm so sorry, I forgot to tell you. My mom is throwing a welcome home party for me, and she wants you to come and be welcomed too! 
The River House is the diner my mom runs. I'm making sure you're coming. See you later, {player_name}! Good luck.
->ApplicationSegment201

===ApplicationSegment201===
<i>You get off the phone with Ren, and clean your dishes in the sink. Today is the day you've decided to start applying to jobs.</i>
<i>Ren mentioned that each of the potential jobs had a description on their company website. You get on your computer and decide to look them up.</i>

->ApplicationSegment202

===ApplicationSegment202===

#SFX: MouseClicking

{applied_to_hotel_pool == false:
+[Learn more about the Lilymist Hotel job.]
->ApplicationSegment202a
}
    {applied_to_plant_shop == false:
+[Learn more about the Greenmoss Nursery job.]
->ApplicationSegment202b 
}

{applied_to_coffee_shop == false:
+[Learn more about the Crumble Café job.]
->ApplicationSegment202c
    }

{number_of_applied_jobs > 0:
+[Finish your job search for the day.]
    ->ApplicationSegment206
}

===ApplicationSegment202a===
<i>You go to the Lilymist Hotel's website, and navigate to the Careers page. You click the "Pool Receptionist" job to get a detailed description.</i>

#SFX: MouseClicking
    
    +[(CONTINUE)]
        <i>"Attend to customer's basic needs in our pool and recreational area, such as but not limited to: renting towels, giving directions, assisting with lost items, checking guests into the pool area. Identify and resolve customer issues. Transfer issues to supervisor when necessary. Organization and people skills are a plus."</i>

            ++[Apply for this job.]
                ->ApplicationSegment203a
        
            ++[Learn about a different job.]
	<i>You wonder what other jobs you could apply for.</i>
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            ++[Finish your job search for the day.]
                -> ApplicationSegment206
            }


===ApplicationSegment202b===
<i>You go to the Greenmoss Nursery's website, and navigate to a section labeled "Work With Us." You click the "Nursery Assistant" job.</i>
    
#SFX: MouseClicking

    +[(CONTINUE)]
        <i>"Our assistants are primarily responsible for the upkeep of our outdoor displays, including our botanical gardens. Assistants will also help with stocking and merchandising of our indoor gardening store. Prior experience is a plus but not required.</i>
        <i>"Must have strong interpersonal skills, and a passion for the outdoors."</i>
        
            ++[Apply for this job.]
                ->ApplicationSegment203b
        
            ++[Learn about a different job.]
	<i>You wonder what other jobs you could apply for.</i>
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            ++[Finish your job search for the day.]
                ->ApplicationSegment206
            }

===ApplicationSegment202c===
<i>You go to the Crumble Café's website. It takes a long time, but you find a "Jobs" section. You click a job you feel you would be qualified for: "Bakery Staff."</i>

#SFX: MouseClicking
    
    +[(CONTINUE)]
        <i>"In this role, you will help make breads, pastries, and desserts in our kitchen under reasonable supervision. Must be comfortable working with food and using multiple types of ovens. All food and recipe training will be on-site. No experience necessary. Positive attitude and a love for the Crumble Café is a plus."</i>
        
            ++[Apply for this job.]
                ->ApplicationSegment203c
        
            ++[Learn about a different job.]
	<i>You wonder what other jobs you could apply for.</i>
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            ++[Finish your job search for the day.]
                -> ApplicationSegment206
            }    

===ApplicationSegment203a===
<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>
<i>There's a question on the application that sticks out to you, in which you must type your answer. It asks: "Are you visually impaired and require reasonable accommodation to perform job duties?"</i>

#SFX: TypingShort

//SOME OF THESE HAVE CONSEQUENCES

*[Yes.]
    <i>You put down "Yes" in the answer box.</i>
    ->ApplicationSegment204a

*[None of your business.]
    <i>You put down "None of your business" in the answer box.</i>
    ->ApplicationSegment204a

*[No.]
    <i>You put down "No" in the answer box.</i>
    ->ApplicationSegment204a
    
===ApplicationSegment204a===
~applied_to_hotel_pool = true
~number_of_applied_jobs++

<i>The application now looks complete. You send it in, hoping for the best, and wonder what you should do next.</i>

->ApplicationSegment202

===ApplicationSegment203b===
~applied_to_plant_shop = true
~number_of_applied_jobs++

<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>
<i>Strangely, you couldn't find any extra questions on the application.</i>

#SFX: TypingShort

*[(CONTINUE)]
    <i>The application now looks complete. You send it in, hoping for the best, and wonder what you should do next.</i>
    ->ApplicationSegment202
    
===ApplicationSegment203c===
<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>

#SFX: TypingShort

*[(CONTINUE)]
->ApplicationSegment204c

===ApplicationSegment204c===
<i>There's a question on the application that sticks out to you, in which you must type your answer. It asks: "If you were a loaf of bread, which would you be and why?"</i>

*[Sourdough.]
->ApplicationSegment204cSourdough

*[Wheat.]
->ApplicationSegment204cWheat

*[White.]
->ApplicationSegment204cWhite

===ApplicationSegment204cSourdough===
    <i>You put down "Sourdough" in the answer box, and manage to give a reason for it, despite the strange question.</i>

#SFX: TypingShort
    
    *[(CONTINUE)]
        ->ApplicationSegment205c

===ApplicationSegment204cWheat===
    <i>You put down "Wheat" in the answer box, and manage to give a reason for it, despite the strange question.</i>

#SFX: TypingShort
    
    *[(CONTINUE)]
        ->ApplicationSegment205c

===ApplicationSegment204cWhite===
    <i>You put down "White" in the answer box, and manage to give a reason for it, despite the strange question.</i>

#SFX: TypingShort

    *[(CONTINUE)]
        ->ApplicationSegment205c
    
===ApplicationSegment205c===
~applied_to_coffee_shop = true
~number_of_applied_jobs++

<i>The application now looks complete. You send it in, hoping for the best, and wonder what you should do next.</i>

->ApplicationSegment202

===ApplicationSegment206===
<i>You leave your computer, proud of the work you did. You take a deep breath. Applying can take a lot of energy out of you.</i>

*[(CONTINUE)]
->RiverHouse201

===RiverHouse201===
<i>You take an afternoon nap on the couch while Aunt Tilly watches a knitting show, meticulously following along with a creation of her own.</i> 

<i>Aware of the party at the River House Café tonight, Aunt Tilly nudges you when it's time to go. The two of you briefly get ready, and head off by car.</i>

#Ambiance: TVAndKnitting

*[(CONTINUE)]
->RiverHouse202

===RiverHouse202===
VAR had_pie = false

<i>Upon parking, you can already hear the sound of classic oldies rock 'n' roll music from outside. You leave the truck and touch your foot down onto a gravel lot. You take Aunt Tilly's arm as the two of you enter the diner. The sound of 50s and 60s music surrounds you.</i>

#Ambiance: ClassicRockAndPartyAmbiance

*[(CONTINUE)]
->RiverHouse203

===RiverHouse203===
<i>You and your Aunt are immediately recognized. You hear a middle-aged woman call out to you:</i>

Oh hi, Tilly! And you must be {player_name}. Lovely to meet you. Come on in, guys! Pull up a seat at the counter here

<i>Your aunt replies:</i>

Hi Jeanette! Tell me how things have been.

*[(CONTINUE)]
->RiverHouse204

===RiverHouse204===
<i>Jeanette replies:</i>

Oh, you know. Lettin' trouble in, keepin' trouble out. That sort of thing.

<i>You don't understand the expression completely, but you say hi, and sit at a rotating seat at the bar counter with your Aunt. Suddenly you hear a squeak and the light thud of someone sitting next to you. You recognize Ren's voice:</i>

Well hey there, stranger! I'm so happy you could show up.

#SFX: DinerSeatSitDown

*[Hi, Ren.]
->RiverHouse205

*[You better believe it.]
Ha! Yeah, you're here!
->RiverHouse205

*[Wait, uh, who are you?]
Oh, I'm so-so-so-so sorry! It's Ren. I didn't mean to, er.
->RiverHouse205

===RiverHouse205===
How about starting off with some of my mom's famous cherry pie? It's for us!

#SFX: PlatesSlidingOnCounter

*[Thank you!]
    ~had_pie = true
    You know it.
    ->RiverHouse206

*[For us?]
    You know it.
    ->RiverHouse206

*[No, thanks.]
    Oh. Okay! No problem.
    ->RiverHouse206
    
===RiverHouse206===
Well, I'm so glad you're here. How were the applications?

<i>Suddenly, Ren's mom butts into the conversation:</i>

Hold it! You applied to some places here in town? Well, congratulations and good luck on your job search.

*[(CONTINUE)]
->RiverHouse207

===RiverHouse207===
<i>Ren replies:</i>

Mom, don't embarrass {player_name}.

<i>Her mom says back:</i>

Hey, I won't say anything to you that I wouldn't say to my own kids, {player_name}. If you're planning on getting a job, and you're really, really serious about it, and I mean really, really, really wanting it, well then you oughta follow-up!

*[Follow-up?]
    ->RiverHouse208

*[That would be ideal.]
    ->RiverHouse208

*[Meh.]
    ->RiverHouse208
    
===RiverHouse208===
Following up is only the most guaranteed way to make sure you stand out from the crowd. Well, aside from applying.

*[(CONTINUE)]
->RiverHouse209

===RiverHouse209===
All of these places are probably getting tons of applications. Ain't no employer wants to sort through all those. They like having people communicate with them for entry level jobs like these. Makes it easy on them.

I mean, as long as you're polite that is. Your goal is to score an interview right now. Think about some ways you can do that.
*[(CONTINUE)]
->RiverHouse210

===RiverHouse210===
<i>Ren says:</i>

Well, we got at least one number, right {player_name}? We can always look their numbers up online if we forget or need more.

<i>Her mom says:</i>

You kids know more about that looking up stuff than me. Anyway, {player_name}, I recommend that. 'Nuff said. Now enjoy your pie. It's made with love!

*[(CONTINUE)]
->RiverHouse211

===RiverHouse211===
{
    -had_pie == true:
    
        <i>You take a forkful of cherry pie and bring it to your lips. It's warm, tart, and absolutely delicious. You hear Ren talking with her mouth full:</i>
    
        Mmm. {player_name}, can my mom make a good pie or what?

#SFX: PieAndUtensils
    
        *[This is delicious!]
            <i>Ren's voice sparkles.</i>
        
            Right? Best dessert in town, hands down.
            ->RiverHouse212
        
        *[It's so cool that your mom bakes treats for you.]
            <i>Ren's voice is filled with pride.</i>
        
            Yeah, I've got a pretty cool mom.
            ->RiverHouse212
        
        *[I want seconds. Like, immediately.]
            <i>Ren laughs and says:</i>
        
            How about you finish the slice that's in front of you first?
            ->RiverHouse212
        
    -else:
        
        <i>You hear the sound of Ren's fork separating the pie on her plate. A moment later, she says with her mouth full:</i>
        
        Mmm, oh my gosh, I can't believe how much I missed this.

#SFX: PieAndUtensils
        
        *[(CONTINUE)]
            ->RiverHouse212
}

===RiverHouse212===
<i>Ren continues:</i>

It's so great to be back in Lilymist. The entire train ride back I was thinking about my mom’s homemade treats.

*[Where were you coming from?]
    Oh, just a few towns over to visit my grandparents for a weekend. I've never been too far away from home.
    ->RiverHouse213

*[I miss home, too.]
    Yeah, it must be so weird for you. Me, I was just visiting my grandparents a few towns over for a weekend. You, you're in a brand new town for the entire summer.
    ->RiverHouse213
    
===RiverHouse213===
Honestly, I love it here. It feels like everyone in Lilymist is part of one big family. I'm not sure what I'd do without that support. I mean, look at all the people who came out just to celebrate me coming back!

*[(CONTINUE)]
    <i>Ren sighs.</i>
    
    I just don't think I could see myself moving somewhere else. Oh, well, unless I could invent a time machine. Then there'd be so many places I'd want to go.

    **[Yeah, that'd be awesome!]
        Exactly! Imagine all the places you could go!
        ->RiverHouse214
        
    **[Like where?]
        ->RiverHouse214
        
    **[A time machine? Really?]
        Yeah, I know, I know. It'll never happen. But it would be so cool.
        ->RiverHouse214

===RiverHouse214===
<i>You can hear the smile in Ren's voice. She says:</i>
Me? I would go to England in the 1800s. It's kind of silly, but I've loved Victorian Romance novels ever since I was in middle school. The pageantry, the family drama. Ugh, I live for that stuff.

*[That's not silly.]
    Thanks, but it's okay. Everyone's got their guilty pleasure, and this is mine.
    
    **[(CONTINUE)]
        ->RiverHouse215

*[I love history, too!]
    Ah, no way! I knew we had something in common!
    
    **[(CONTINUE)]
        ->RiverHouse215
    
*[Not to mention there's tons of spicy romance.]
    <i>Ren laughs.</i> 
    
    I'm not reading it just for the handsome lords and ladies, you know.
    
    <i>She pauses.</i>
    
    Okay, fine, so I dreamed of being swept off my feet by a charming gentleman until I was in 8th grade. Who hasn't?
    
    **[(CONTINUE)]
        ->RiverHouse215
    
===RiverHouse215===
I'm not just interested in Victorian history either. Ancient civilizations, U.S. history. 

<i>Ren stops.</i> 

Oh, wait! You haven't been to the theater in town, have you? We have to go!

*[(CONTINUE)]
->RiverHouse216

===RiverHouse216===
<i>You hear Ren stand up as she calls out to her mom.</i>

Hey, Mom? {player_name} and I are going to see if Mr. Crenshaw will give us a tour of the theater, okay?

<i>Her mom replies:</i>

Again? Well, all right. Just don't stay out too late, now, you hear?

#SFX: DinerSeatStandUp

*[(CONTINUE)]
->RiverHouse217

===RiverHouse217===
<i>Ren turns back to you and says:</i>

The Barlow Theatre is about as close as it gets to a time machine in Lilymist! It's this old stage building built in Lilymist in the 1920s. You wouldn't believe some of the things they say about the theater's builder.

*[But what about your party?]
    It's okay! I already said hi to everyone. I'm sure no one will miss us. Now, what do you say?
    ->RiverHouse218

*["Again"? How many times have you gone on this tour?]
    This makes four! But the tour guide makes the experience really special. Each time it's like a whole new experience. Now, what do you say?
    ->RiverHouse218

*[I don't know, I'm not feeling up to it.]
    Aw, are you sure? Any chance I can talk you into it?
    ->RiverHouse218

===RiverHouse218===
*[Sounds like fun. I'm in!]
->RiverHouse219a

*[Maybe some other time.]
{
    -had_pie == true:
        Well, okay. I suppose you've got your job applications to think about anyway. Still, thanks for coming to my party, {player_name}! I'm so glad you got to try our world-famous cherry pie!
        
        *[(CONTINUE)]
            ->RiverHouse219b
        
    -else:
        Well, okay. I suppose you've got your job applications to think about anyway. Still, thanks for coming to my party, {player_name}!
        
        *[(CONTINUE)]
            ->RiverHouse219b
}
    
===RiverHouse219a===
~ren_theater = true

<i>Ren claps eagerly.</i>

You're gonna love it, I'm sure!

<i>Then, Aunt Tilly chimes in.</i>

Have a nice time with Ren, dear! She's right, the theater is marvelous, and I happen to know that Mr. Crenshaw, the tour guide, is great about visually describing everything that's in there. He doesn't miss a detail!

#SFX: RenClapping

*[(CONTINUE)]
->Theater201

===RiverHouse219b===
<i>You and Aunt Tilly stick around for a little while, enjoying the rest of the party, not to mention the absolutely delicious food made by Ren's mom. A little while later, you both head home.</i>
->Follow_Up_Segment_Start

===Theater201===
<i>You take Ren's elbow and follow her out into the evening street. She's practically vibrating with energy. A few minutes of walking later, she starts to slow down. You hear her exclaim:</i>
This is it! Ooh, this is so exciting!

#Ambiance: EveningStreet

*[(CONTINUE)]
->Theater202

===Theater202===
<i>Ren leads you inside, and you hear a kindly, little old voice address you.</i> 
Why, hello there! Who do I have the pleasure of—? Well, well, if it isn't my favorite tour guest.
<i>Ren replies back:</i>
Hi, Mr. Crenshaw! {player_name} here is new in town.

#Ambiance: None
#SFX: HeavyDoubleDoors

*[(CONTINUE)]
->Theater203

===Theater203===
Is that so? Well, {player_name}, it's a pleasure to meet you. I'm Teddy Crenshaw, your tour guide for this evening here at the remarkable Barlow Theatre. Feel free to call me "Teddy," "Mr. Crenshaw," or "Mr. Teddy," it's all the same to me!

<i>He chuckles.</i>

*[Thanks for having us!]
    The pleasure's all mine! Now, let's get started.
    
    **[(CONTINUE)]
        ->Theater204

*[What's the first stop on the tour?]
    Eager to see the theater, are we? I certainly don't blame you. Let's get started.
    
    **[(CONTINUE)]
        ->Theater204

*[Okay then, "Teddy-mister-Crenshaw-or-mister-Teddy."]
    <i>You hear the grin in Teddy's voice.</i>
    
    A comedian, eh? You would've done well at the Barlow Theatre during its heyday. This theater hosted both vaudeville comedy acts and stage plays back in the 1920s.

    **[(CONTINUE)]
        ->Theater204

===Theater204===
<i>You and Ren follow Teddy through a pair of thick, heavy doors. With pride, Teddy says:</i> 
Welcome to the Barlow Theatre's main stage. Before you is one of the most opulently decorated stages in the region.

#SFX: HeavyDoubleDoors
#Ambiance: EmptyTheaterEchoey

*[(CONTINUE)]
->Theater205

===Theater205===
<i>His voice echoing off the theatre's walls, Teddy goes on to describe the space.</i>
About 50 rows of seats in front of you is the stage. This entire room is decorated with polished brass ornaments and candle sconces, and the walls are lined with portraits of great playwrights, from Shakespeare to Aeschylus.

<i>Next to you, you can hear Ren bouncing on her feet.</i>
Ooh! Mr. Crenshaw, tell {player_name} about Sam Barlow!

*[Yep, you're definitely a history buff, alright.]
    <i>Teddy says:</i>
    That she is. She could practically run this tour herself if she wanted to. 
    ->Sam_Barlow
    
*[Was he a playwright?]
    <i>Teddy says:</i>
    Of a sort. 
    ->Sam_Barlow
    
*[Let's just move on with the tour.]
    <i>Teddy says:</i>
    Very well. I can see you're eager to get a taste of the space.
    ->Tour_Continues
    
=== Sam_Barlow ===
Samuel Barlow was the architect who built this theater. A renaissance man, he traveled the world in search of inspiration, then came here to Lilymist to build a theater where his plays could be shown. He was English, hence the reason "Barlow Theatre" is spelled with the "E" after the "R."
-> Questions_About_Sam_Barlow

=== Questions_About_Sam_Barlow ===

+[Where did he travel?]
<i>Teddy says:</i>
    All over the world. He was born in 1898 to a pair of farmers in a small town in England, but, being a restless man, he didn't stay there long. In his twenties he traveled all of Europe, from Wales down to Greece, and even ventured as far as Japan.
    <i>Ren interjects:</i>
    Imagine how cool that would be. And he was only 21!
    ->Questions_About_Sam_Barlow
    
+[Why settle down in Lilymist?]
<i>Teddy says:</i>
    After travelling the world over, he decided that he wanted to be an artist. He tried his hand at a number of different trades, eventually becoming a decent architect, but it was the stage that caught his eye the most.
    
    <i>Ren interjects:</i>
    
    Playwriting specifically.
    
    <i>Teddy smiles.</i> 
    
    Why, of course.
    
    ++[(CONTINUE)]
        When he first travelled to America, Broadway was in its heyday, but he dreamed of establishing a chain of big theatres in smaller, rural towns just like the one he'd grown up in back in England.
        
        <i>Ren speaks up again, her voice sounding wistful.</i>
        
        Some part of him must've missed home. He wanted to travel the world, but he couldn't just give that up.
        ->Questions_About_Sam_Barlow
    
+[Were his plays any good?]
    <i>Teddy chuckles.</i>
    
    Depends on who you ask. His first work, <i>Man Adrift</i>, was a comedy about a sailor who finds himself shipwrecked on an island, where, by sheer coincidence, all of his forgotten school friends, former lovers, and family members have shipwrecked as well. He's forced to reconcile with them as they all wait to be rescued.
    
    <i>Ren laughs, adding:</i> 
    
    It's a bit of a ridiculous premise.
    
    ++[(CONTINUE)]
        <i>Teddy continues.</i>
    
        Indeed. A lot of people compare the protagonist's struggle to avoid all these people in his life with Barlow's own conflicted feelings about leaving his home in England to travel the world.
        
        <i>Ren sounds pensive as she speaks:</i>
        
        Yeah. Imagine leaving your whole life behind like that. His family must've been on  his mind a lot.
        
        +++[(CONTINUE)]
    
            <i>Teddy continues:</i>
    
            Unfortunately, though, few critics liked <i>Man Adrift</i>, and few production companies were interested in his work. So, being the ambitious man he was, Sam Barlow decided to make his own production company and his own theater in order to put on his plays. Hence, the Barlow Theatre!
            ->Questions_About_Sam_Barlow
    
+[Let's continue on with the tour.]
    -> Tour_Continues

=== Tour_Continues ===
VAR player_likes_history = false

<i>Teddy walks you and Ren up onto the stage, then to another set of doors and says:</i>
Welcome backstage! This is where all the magic happened, so to speak.

#SFX: HeavyDoubleDoors
#Ambiance: CreakyWoodenRoom

*[(CONTINUE)]
    This dressing room still gets a lot of use. Our local young performance troupe, the Barlow Society, puts on shows here every couple of months, and folks come from all over to see our Shakespeare performances in the spring and summer.
    
    <i>You can practically hear Ren bouncing on her heels.</i>
    
    Isn't this great, {player_name}? It's like having a slice of history right in your own backyard!
    
    **[Yeah, this is amazing!]
        ~player_likes_history = true
        Right? Some of my friends think it's weird to be this into history. It's nice to hang out with somebody who gets it. ->Tour_Continues_2
            
    **[You really love this stuff, don't you?]
         ~player_likes_history = false
        Only with my entire heart and soul! Some people think it's weird to be as into history as I am, but what do they know? ->Tour_Continues_2
    
    **[I don't really get it.]
        ~player_likes_history = false
        Aah, I bet you just haven't had somebody teach it to you in a way that's fun. ->Tour_Continues_2

=== Tour_Continues_2 ===
When it comes down to it, history is all about stories, and who doesn't love a good story?

*[(CONTINUE)]
->Tour_Continues_2b

===Tour_Continues_2b===
    <i>After exploring the backstage area, Teddy shows you the front of the building, the theater balcony, the lounge area, and the changing rooms that theater-goers would've used back in the 20s. Ren has something to add about each and every little detail.</i>

#Ambiance: None
    
*[(CONTINUE)]
-> Tour_Continues_3

=== Tour_Continues_3 ===
<i>Finally, Teddy walks you through the door of a smaller room near the back of the theater.</i>
And here we have Sam Barlow's office, where he did most of the writing for his plays. We've furnished the room to resemble what it might have been like back in the 1920s.
<i>Ren gasps, clapping her hands together.</i>
Oh, wow! It's so authentic! 

#SFX: DoorOpenCloseCreak
#Ambiance: OldOfficeWithTickingClock

*[(CONTINUE)]
    {player_name}, there're a ton of great pieces of Art Deco furniture in here. This dark wooden desk, that old-fashioned wall clock, this little four-legged writing stool, and – oh my gosh – that's a typewriter! Mr. Crenshaw, you didn't tell me you set all this up!
    
    **[(CONTINUE)]
        <i>Teddy laughs.</i>
        I thought I'd surprise you with something new. Besides, maybe this could give you some inspiration for that novel you're working on.
        <i>Ren's voice gets a bit shy:</i>
        Oh, uh, thanks, Teddy! I mean, I haven't been working on that novel in a while. And besides, it's set in the 1800s, not the Roaring Twenties.

    ***[You're writing a novel? That's so cool!]
        Aww, thanks, {player_name}. It's not really anything serious, though. I haven't even finished the first draft.
        <i>Teddy interjects.</i>
        Last you told me it was up to 200 pages. I'd wager you're getting pretty close to your draft!
        
        ****[(CONTINUE)]
            ->Tour_Over
    
    ***[It's not a Victorian Romance, is it?]
        <i>Ren laughs.</i>
        Oh my gosh, don't make me regret I told you that I read those, {player_name}. But yes, it is.
        <i>Grinning, Teddy says:</i>
        Never be embarrassed about your passion, Ren.
        
        ****[(CONTINUE)]
            ->Tour_Over

=== Tour_Over ===
Anyway, I'll let you two admire the room for a little bit. Enjoy you two, and thanks for visiting the theater!
<i>As he steps out, Ren replies:</i>
Thanks, Mr. Crenshaw, we really appreciate it!

 #SFX: WoodDoorOpeningClosing

*[(CONTINUE)]
-> Post_Tour_with_Ren

=== Post_Tour_with_Ren ===
{player_likes_history == true:
   <i>Ren turns back to you.</i>
   Isn't this something, {player_name}? It's especially nice to come through here with a fellow history geek. Thanks for doing this with me!
    -else:
    <i>Ren turns back to you.</i>
    Isn't this something, {player_name}? I know you’re not a huge history dork like me, but I'm glad you came anyway. It's nice to be able to share this with somebody.
    }
    
    *[I'm glad we did this, too!]
        That's great! We should definitely hang out some more when you're able to take a break from the job hunt.
        
        **[(CONTINUE)]
        -> Leaving_the_Theater
    
    *[I feel like I learned a lot about you.]
        Yeah! What can I say? This girl loves old stuff. That, and stories. The Barlow Theatre has both! 
        Anyway, we should definitely hang out some more when you're able to take a break from the job hunt.
        
        **[(CONTINUE)]
        -> Leaving_the_Theater
        
    *[So, tell me about this novel you're writing.]
        <i>Ren chuckles.</i> 
        Maybe some other time. I'm not sure I'm ready for that kind of embarrassment. Tell you what, maybe I'll show you my latest draft next time we hang out.
        
        **[(CONTINUE)]
        -> Leaving_the_Theater
        
=== Leaving_the_Theater ===
<i>You and Ren walk home together, chatting about this-and-that as you go.</i>

#Ambiance: EveningStreet

*[(CONTINUE)]
-> Follow_Up_Segment_Start

=== Follow_Up_Segment_Start ===
<i>Over the next few days, you continue settling in and exploring the town. The smell of fresh dew on your aunt and uncle's farm, the sound of the waterfall, and the smell of fresh muffins wafting out of the Crumble Café all become familiar to you.</i>

#Ambiance: None

*[(CONTINUE)]

    {number_of_applied_jobs > 1:<i>A week into your stay, you find yourself wondering about your job applications.|A week into your stay, you find yourself wondering about your job application.} You wonder if there's anything you should do today while waiting to hear back.</i>
    ->Follow_Up_Options

=== Follow_Up_Options ===
*{applied_to_hotel_pool} [Follow up with the hotel.]
<i>You decide to follow up with the hotel.</i>
->Hotel_Follow_Up
*{applied_to_plant_shop} [Follow up with the nursery.]
<i>You decide to follow up with the nursery.</i>
->Nursery_Follow_Up
*{applied_to_coffee_shop} [Follow up with the café.]
<i>You decide to follow up with the café.</i>
->Cafe_Follow_Up
*[Move on with your day.]
-> Give_Up

=== Hotel_Follow_Up ===
~ currentlyFollowingUpWith = "hotel"
*[Call them.]
->Make_a_Call_Hotel
    
*[Send them an email.]
-> Send_an_Email

*[Just wait for now.]
->Follow_Up_Options

=== Nursery_Follow_Up ===
~ currentlyFollowingUpWith = "nursery"
*[Call them.]
->Make_a_Call_Nursery_Or_Cafe
    
*[Send them an email.]
-> Send_an_Email

*[Just wait for now.]
->Follow_Up_Options

=== Cafe_Follow_Up ===
~ currentlyFollowingUpWith = "cafe"
*[Call them.]
->Make_a_Call_Nursery_Or_Cafe
    
*[Send them an email.]
->Send_an_Email 

*[Just wait for now.]
->Follow_Up_Options

=== Whats_Their_Contact ===
*[Look it up on their website.]
->Look_it_Up_Online

*[Ask your aunt.]
<i>You hear Aunt Tilly passing through the room, and stop her to ask about the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}'s contact information. She replies:</i>
Oh, I'm not sure come to think of it. Maybe you can look it up somewhere?
->Whats_Their_Contact

*[Let it go for now.]
->Follow_Up_Options

===Look_it_Up_Online===
~ have_contact_info = true
    <i>You sit down at your computer and look up the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} online. You eventually find their contact information section, which includes their phone number and email address.</i>
    {number_of_applied_jobs == 3:<i>While you're at it, you decide to look up the contact information for the other two places as well.</i>}
    {number_of_applied_jobs == 2:<i>While you're at it, you decide to look up the contact information for the other place you applied to as well.</i>}

#SFX: TypingShort

    *{currentlyFollowingUpWith == "cafe" || currentlyFollowingUpWith == "nursery"} [Call the {currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}.]
    ->Make_a_Call_Nursery_Or_Cafe
    *[Send them an email.]
    ->Send_an_Email 

=== Make_a_Call_Hotel ===
<i>You find the note that Ren got from the concierge at the hotel. On it is the hotel hiring manager's number. You punch it into your phone, then put it up to your ear. A moment later, you hear a man's voice on the other end:</i>

Lilymist Hotel, this is Gordon speaking.

#SFX: PhoneDialing
    
    *[Could I speak to the hiring manager, please?]
    <i>Your hear the man smile.</i>
    
    You're speaking to him right now. What can I do for you?
    
        **[I'm calling to follow up about a job application.]
        Ah, you must be {player_name}. Don't worry, I'm in the process of reviewing your application and will get back to you soon. Hang tight!
        ~ succeededFollowUpHotel = true
            ->Make_a_Call_Hotel_2
    
        **[Why haven't you responded to my application yet?]
        <i>You hear a bit of annoyance in the hiring manager's voice.</i>
        Well, it takes time for me to go through each application. I'll get back to you as soon as I can.
            ->Make_a_Call_Hotel_2
    
    *[Um, nevermind.]
    Oh, uh, of course. Have a great day.
    <i>You hang up and think about what to do next.</i>
    -> Follow_Up_Options
    
=== Make_a_Call_Hotel_2 ===
*[Do you have time for an interview this week?]
I like your initiative! If you're a good fit we should be able to set something up for this week, yes.
-> Make_a_Call_Hotel_2

*[Sounds good, thanks!]
No problem, have a good day.
<i>He hangs up, and you wonder what you should do next.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
Most likely I'll have an answer for you in the next one-to-two days. Don't worry, it's coming soon.
-> Make_a_Call_Hotel_2

=== Make_a_Call_Nursery ===
<i>In a light, sing-song voice you hear a woman say:</i>
Hello! Greenmoss Nursery, how can we help you?

#SFX: PhoneDialing

*[Could I speak to the hiring manager, please?]
That would be me! I'm Matilda, the owner of Greenmoss Nursery, so I handle most of our hiring decisions. Are you interested in a job?

    **[I'm calling to follow up about a job application.]
    {resumeNursery:Oh, great! Are you {player_name}? I heard that you dropped off your résumé a little while ago. Don't worry, we'll get back to you soon.}
    {not resumeNursery:Got it. We got an application from a {player_name} a little while ago. Is that you? Don't worry, we'll get back to you soon.}
        ~ succeededFollowUpNursery = true
    ->Make_a_Call_Nursery_2

    **[Why haven't you responded to my application yet?]
    <i>You notice that she sounds a bit off-put by your question.</i>
    Well, it takes time for us to go through those. Things tend to get busy around here.
    ->Make_a_Call_Nursery_2
    
*[Um, nevermind.]
Oh, uh, of course!
<i>You hang up and think about what to do next.</i>
-> Follow_Up_Options
    
=== Make_a_Call_Nursery_2 ===
*[Do you have time for an interview this week?]
Ah, an eager beaver, I see! We should be able to set something up this week if the position turns out to be a good fit.
-> Make_a_Call_Nursery_2

*[Sounds good, thanks!]
Of course, have a nice day!
<i>She hangs up, and you wonder about what to do next.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
It shouldn't be too long, maybe another day or two. We'll reach out soon!
-> Make_a_Call_Nursery_2

=== Make_a_Call_Cafe ===
<i>You hear an older, but energetic-sounding voice on the other end:</i>

Crumble Café, Herb speaking. How can I help you?

#SFX: PhoneDialing

*[Could I speak to the hiring manager, please?]
I'm the owner of the café, and I take care of hiring myself. What do you need?

    **[I'm calling to follow up about a job application.]
    {resumeBakery:Yeah, I remember you dropped it off. Don't worry, I'm still planning on giving you a call once I get a chance to look it over.}
    {not resumeBakery:Are you {player_name}? I got your application and I'm going to look over it soon.}
        ~ succeededFollowUpCafe = true
    ->Make_a_Call_Cafe_2
    
    **[Why haven't you responded to my application yet?]
    <i>You notice that he sounds a little annoyed.</i>
    I promise I'll get around to it. I've just got a lot of things on my plate at the moment.
    ->Make_a_Call_Cafe_2
    
*[Um, nevermind.]
Okay, then. Have a nice day.
<i>You hang up and think about what to do next.</i>
-> Follow_Up_Options

=== Make_a_Call_Cafe_2 ===
*[Do you have time for an interview this week?]
I respect someone wanting to get a jump on things. Tell you what, I'll get back to you once I finish reviewing your application. If you're a good fit, we'll set something up.
-> Make_a_Call_Cafe_2

*[Sounds good, thanks!]
Yup. You have a good day, now. 
<i>He hangs up, and you wonder what you should do next.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
I think I can get back to you in a day or two. Shouldn't be too long.
-> Make_a_Call_Cafe_2

=== Make_a_Call_Nursery_Or_Cafe ===
    {not have_contact_info:<i>You reach into your pocket for your phone and start to dial a number, only to realize that you don't know what their number is.</i>-> Whats_Their_Contact|<i>You dial their number on your phone, then put it to your ear as you wait for someone to pick up. Finally, someone does.</i>}
    {currentlyFollowingUpWith == "nursery": ->Make_a_Call_Nursery}
    {currentlyFollowingUpWith == "cafe": ->Make_a_Call_Cafe}

=== Send_an_Email ===
    {not have_contact_info: <i>You sit down at your computer and start thinking about what you want to say, when you realize that you don't know what their email address is.</i>-> Whats_Their_Contact|<i>You open up your email, and create a brand new, blank message. At the top, you put in their email address.</i>-> Writing_the_Email}
    
=== Writing_the_Email ===
<i>You write a pleasant, professional introduction, then stop and wonder about what you want your email to say.</i>

#SFX: TypingShort

+[Show enthusiasm about the job.]
->Show_Enthusiasm

+[Explain why you'd be a good fit.]
->Explain_Good_Fit

+[Ask if they have time for an interview this week.]
->Ask_About_Interview_this_Week

+[Ask what's taking them so long to review your application.]
->Ask_Whats_Taking_So_Long

===Show_Enthusiasm===
<i>You write about how you'd be excited to work at the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}. After carefully proofreading your email, you hit send.</i>

#SFX: TypingShortAndClicking

*[(CONTINUE)]
<i>You wonder what you should do next.</i>
{currentlyFollowingUpWith == "hotel": 
~succeededFollowUpHotel = true
}
{currentlyFollowingUpWith == "nursery":
~succeededFollowUpNursery = true
}
{currentlyFollowingUpWith == "cafe":
~succeededFollowUpCafe = true
}
->Follow_Up_Options

===Explain_Good_Fit===
<i>You summarize your skills, and make a good case for why you think you'd be a great fit for the {currentlyFollowingUpWith == "hotel": hotel pool}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} job. After carefully proofreading your email, you hit send.</i>

#SFX: TypingShortAndClicking

*[(CONTINUE)]

<i>You wonder what you should do next.</i>
{currentlyFollowingUpWith == "hotel": 
~succeededFollowUpHotel = true
}
{currentlyFollowingUpWith == "nursery":
~succeededFollowUpNursery = true
}
{currentlyFollowingUpWith == "cafe":
~succeededFollowUpCafe = true
}
->Follow_Up_Options

===Ask_About_Interview_this_Week===
<i>You explain that you'd be happy to attend an interview with them at the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} this week, if they have time. After carefully proofreading your email, you hit send.</i>

#SFX: TypingShortAndClicking

*[(CONTINUE)]

<i>You wonder what you should do next.</i>
{currentlyFollowingUpWith == "hotel": 
~succeededFollowUpHotel = true
}
{currentlyFollowingUpWith == "nursery":
~succeededFollowUpNursery = true
}
{currentlyFollowingUpWith == "cafe":
~succeededFollowUpCafe = true
}
->Follow_Up_Options

===Ask_Whats_Taking_So_Long===
<i>You write a few words about how you've been waiting an entire week to hear back from them. After carefully proofreading your email, you hit send.</i>

#SFX: TypingShortAndClicking

*[(CONTINUE)]

<i>You wonder what you should do next.</i>
->Follow_Up_Options

=== Give_Up ===
    {currentlyFollowingUpWith == "none": <i>You decide to just be patient and let them get back to you when they get back to you.</i>|<i>You decide to stop doing follow-ups for now.</i>}
    *[(CONTINUE)]
    -> Kai201

=== Kai201 ===
<i>With follow-ups out of the way, you don't have anything left to do with your job applications. All you can do is wait and hope.</i>

<i>With your aunt outside working and your uncle at his chiropractor job, the house is quiet and peaceful. You wonder how you should spend the rest of your day to take your mind off of your applications.</i>

*[Relax in front of the TV.]
    <i>You decide it would be nice to catch up on your favorite shows. You pick up the remote and sit down in front of the TV.</i>
    ->Kai202
    
*[Call your friends.]
    <i>Maybe Ren or Kai are doing something interesting. You pull your phone out of your pocket and start to dial a number.</i>
    ->Kai202

*[Go for a walk.]
    <i>You decide to go outside for a little stroll. Maybe some fresh air would do you good.</i>
    ->Kai202

=== Kai202 ===
<i>Suddenly, you hear a voice from outside call out:</i>
    
Woo-hoo!

*[(CONTINUE)]
    ->Kai203
    
===Kai203===
<i>An instant later, you hear a skateboard pull up in front of your house followed by some rapid knocking on the door. You open up and hear Kai, talking fast.</i>

{player_name}, hey! you gotta check out what's happening downtown. C'mon!

#SFX: SkateboardStopAndRapidKnocking

*[What’s going on?]
    ->Kai204

*[You mean right now?]
Yep, right now!
    ->Kai204

*[I'm kind of in the middle of something.]
    It'll be fun, I promise!
    ->Kai204

=== Kai204 ===
It's Lilyfest, the town's big music festival. Everyone gathers out on the big lawn in front of the school to hear all the different local bands play. There’s a lot of great acts to listen to, this year especially.

So are you in, or what?

*[Okay, let's go!]
    Sweet, let's do it!
    ->Kai205a

*[Pass, no thanks.]
    ->Kai204b

=== Kai204b ===
You sure? Well alright, you do you. Catch you later!

<i>You hear Kai jog down your front steps, hop back on his skateboard, and careen down the hill towards the center of town. As he goes, you step back inside back to what you were doing before.</i>

<i>You can't help but wonder what he was talking about. Maybe you could still catch up to him if you ask Aunt Tilly for a ride?</i>

#SFX: SkateboardLeave

*[Catch up with Kai. What the heck, right?]
->Kai205b

*[Stick to your other plans.]
    <i>You decide to stay home and relax instead.</i>
    ->UnclePepTalk201
    
=== Kai205a ===
<i>You follow Kai down the road from your aunt and uncle's house. When you arrive downtown, you hear the sounds of music and laughter all around you. Kai talks to you, unable to hide his excitement:</i>

Man, it's gonna be a great one this year!

#Ambiance: MusicFestival

*[(CONTINUE)]
->Kai207

===Kai205b===
    <i>Aunt Tilly agrees to take you. When you arrive downtown, you hear the sounds of music and laughter all around you. Soon, you hear Kai's voice ring out:</i>
    
    {player_name}! You made it after all! Here, let me lead you to the main event.

#Ambiance: MusicFestival

*[(CONTINUE)]
    ->Kai207

=== Kai207 ===
~kai_music_festival = true

<i>As you follow Kai, you begin to pick out the sounds of instruments of all kinds around you. Kai moves carefully forward, moving around people and maneuvering past crowds and people standing in line. He apologizes to a few people:</i>
    
Whoops, sorry, don't mind us! Looks like we ran straight through the churro line, {player_name}. There's a lot more food trucks and stuff than there were last year.

<i>Sure enough, you pick up the tantalizing smell of frying food nearby.</i>

#SFX: FryingFood

*[(CONTINUE)]

    <i>Soon, you and Kai maneuver past the crowds and find a space for yourselves beneath a tree. You lean back against the tree bark, taking in Lilyfest with all of your senses. Kai gives you a little nudge.</i>
    
    Pretty dope, right? I'd say this is worth me kidnapping you out of the blue. Besides, now you can help me with my master plan!
    
    **[Yeah, this is awesome!]
        Sweet, I'm glad you like it! I was taking a gamble on you being a music lover. When I remembered Lilyfest was happening today I thought, "What the heck? Let's see if {player_name} is down to come." I like to keep it spontaneous.
        
        Anyway, now that you're here, there's something you can help me with. ->Kai208
    
    **[Do you "kidnap" all of your friends like this?]
        I dunno, sometimes when I'm doing something cool I like to invite people to come with me. Sometimes you just gotta be spontaneous. Live a little, y'know?
        
        Anyway, now that you're here, there's something you can help me with. ->Kai208
    
    **["Master plan"?]
        Nah, I mean it's not really a "master plan" exactly. I just thought that was fun to say. Really I'm more of a spontaneous kind of guy.
        
        Still, though, I also wanted to get your help with something. ->Kai208
    
=== Kai208 ===
You remember me mentioning that I'm a DJ, right? Well, the bread and butter of any DJ is samples! Here, look what I brought.

<i>Kai unzips his bag and places a small, slightly heavy object into your hand. It's plastic, and has a lot of small, flat buttons on it.</i>

#SFX: BagUnzip

*[(CONTINUE)]
->Kai208a

===Kai208a===
It's an audio recorder. It's a bit old, but the quality on it's pretty good. Think you can help me record some of these musicians' sound? It'll give me great stuff to put in my mixes.

->Kai209

=== Kai209 ===
+[Is this for the party you're going to DJ at?]
    Oh right, I told you and Ren about that at the café. Yeah, uh, this is more for my general sample collection, you know? I'll have to put more thought into what I want to play at Carl's party.
    
    But yeah, this is more just for fun.
    ->Kai209

+[Are the musicians okay with this?]
    Yeah, no worries. Everybody knows me. They know I DJ and stuff, so I'm sure they'll be cool with me recording some of their sound. People around here tend to be pretty chill about that kind of stuff.
    ->Kai209

+[I'm in. What do you need me to do?]
    ->Kai210

=== Kai210 ===
Awesome! First, my friend, I need you to open your ears. Where's the music moving you today?

*[Uh, what?]
    <i>Kai laughs.</i>
    
    Just tell me what you're hearing! There are a lot of different groups playing today. I want to see which one you think I should record for my mixes. What sounds are calling to you?
    
    **[Why can't you pick?]
        Nah, it'll be more fun if you do it! Just go with the flow, see what sounds you like.
        
        ***[Hmm, let me listen.]
            ->Kai211
    
    **[Hmm, let me listen.]
        ->Kai211

*[Hmm, let me listen.]
    ->Kai211

===Kai211===
<i>You concentrate, trying to pick out individual instruments from the cacophony of beats, plucked strings, horns, laughter, and applause coming from across the school lawn.</i>

Well, {player_name}? What've you got for me?

*[I hear some acoustic guitar.]
    ->Kai212a

*[I think I hear salsa music.]
    ->Kai212b

*[That sounds like a lot of percussion over there.]
    ->Kai212c

===Kai212a===
<i>You and Kai stroll over to where the sound of warm, melancholy, twanging strings wafts tantalizingly across the school lawn. It's much quieter here, everyone standing in quiet appreciation of the guitarist's technique. You can hear every little squeak, creak, and vibration coming from the guitar. The sound is beautifully organic. Kai whispers to you:</i>

That's Laine, we both go to the same school. She's definitely on her way to becoming a folk music star.

#Ambiance: GuitarMusic

+[Let's sample her!]
    Okay, sure! Her sound is a bit more soft than what I usually work with, but what the heck, I like a challenge.
    ->Kai213
    
+[Let's check out the salsa music.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212b
    
+[Let's check out that percussion.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212c

===Kai212b===
<i>You and Kai follow the sound of upbeat keyboards, saxophone, and rollicking cowbell beats. As you approach, you hear a singer mix in Spanish lyrics and a few "la-la-la"s to the beat of the tambourine in her hand. All around you, you hear people clapping their hands to the intoxicating beat. Kai taps your shoulder and says:</i>

Not bad, right? This salsa band is awesome. The saxophonist lives on my street, which means I get to hear them practicing all the time.

#Ambiance: SalsaMusic

+[Let's sample them!]
    Heck yeah! I love that beat they've got going.
    ->Kai213
    
+[Let's check out the guitar music.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212a
    
+[Let's check out that percussion.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212c

===Kai212c===
<i>You and kai make your way over. The sound of upbeat, grooving drums and other percussion instruments washes over you as you feel the movement of people cheering, swaying, and waving their arms around you. Kai nudges you:</i>

Oh, rad! I think this is that music group from Zimbabwe. You hear that thing that sounds like a xylophone? That's a marimba. It's basically like a big xylophone that you hit with big mallets. Wow, those guys on stage are really moving!

<i>You can't help but sway and tap your foot as the bouncy, joyful sound of the marimbas and drums wraps warmly around you.</i>

#Ambiance: MarimbaMusic

+[Yeah, let's sample this!]
    Yeah, right on! This would be great for a pop track. Mix in a bit of synth, y'know?
    -> Kai213

+[Let's check out the guitar music.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212a

+[Let's check out the salsa music.]
    {~Awesome, let's do it.|Sweet, I'm in.|Cool, let's go.|You got it.}
    ->Kai212b

===Kai213===
Here, press this to start recording.

<i>Kai guides your fingers to a button on the recorder. Kai says:</i>

Whenever you're ready, hit record!

*[(Press the button)]
    ->Kai214
    
===Kai214===
<i>You push the record button. You and Kai stand there for a few minutes, taking in the music while the recorder does its work. As you stop the recording, you can hear Kai smiling.</i>

Yeah, this is gonna be awesome to work with.

#SFX: PressingButton

*[(CONTINUE)]
->Kai215

===Kai215===
<i>You and Kai listen to more music, buy some treats, talk about music, and enjoy the rest of Lilyfest.</i>

*[(CONTINUE)]
->Kai216

===Kai216===
<i>As the festival winds down, you and Kai stroll over to the skatepark nearby and sit down on a bench. You hear the sound of a few skateboards gliding off the pavement a little ways in front of you as Kai speaks:</i>

Thanks for helping me record those samples, {player_name}. You did me a real solid.

#Ambiance: Skatepark

*[It was a lot of fun!]
    Glad you liked it! Cool to see there's someone else who likes music as much as I do.
    ->Kai217

*[I'm happy to help.]
    Much appreciated. Now I'll have to think about which mixes I want to put them in.
    ->Kai217

*[What are you going to do with them?]
    Probably slot them into one of the mixes I've already been working on. See if I can give it some new life.
    ->Kai217
    
===Kai217===
<i>You hear Kai lie down on the bench, looking up to the sky.</i>
Man, I can't believe I scored that DJ gig at Carl's party. He's a cool dude, and he's got good taste in music.

#SFX: LieDownOnBench

*[That must mean you're a good DJ.]
    I sure hope so. I'll have to be good if I want to start a music career.
    ->Kai218

*[Do a lot of people like your music?]
    A few people. Kids at school mostly. A couple of people listen to the stuff I post online, which is cool.
    ->Kai218
    
*[Lucky break for you.]
    Yeah, you said it. I just hope it's not, like, all luck, you know?
    ->Kai218
    
===Kai218===
I mean, I like skating, and I'm doing okay in school and stuff, but what I like the most is music. Well, that and travelling. I haven't done a lot of it, but I'd be stoked to go backpacking in Europe some day, you know?

*[Yeah, I'd love to travel more.]
    Totally. I mean coming to Lilymist, right? You're already doing it a little bit.
    ->Kai219
    
*[Travelling can be scary.]
    Yeah, I feel. I guess I'm okay with that risk. Experiencing new things, hearing new music. That's worth taking a chance on, in my book.
    ->Kai219
    
*[Would you want to move there?]
    I dunno, maybe.
    ->Kai219
    
===Kai219===
<i>You hear an eagerness in Kai's voice.</i>

Me, I'd want to move to a big city. Somewhere I can DJ and focus on my art. Get good at it, meet more people in the scene, all that stuff. I don't think I'm ready for that yet, but maybe I could do it once I go to college and practice mixing a bit more. Honestly, that'd be the coolest thing.

*[I'm sure you've got the talent.]
    Thanks! Fingers crossed, right?
    
    Anyway, that's my dream. What about you, {player_name}, what's your dream?
    ->Kai220

*[Yeah, I can relate.]
    Oh yeah? What about you, {player_name}, what's your dream?
    ->Kai220
    
*[You can do anything with a little hard work.]
    I hear you. And believe me, I'm down for it.
    
    Anyway, that's my dream. What about you, {player_name}, what's your dream?
    ->Kai220
    
===Kai220===
*[To do something amazing.]
    <i>You hear the smile in Kai's voice.</i>
    
    Word, I feel that. Who knows, maybe you'll be the scientist who discovers a cure for cancer, or an influential artist. Or how about a world-class DJ?
    
    **[(CONTINUE)]
        ->Kai221

*[To make good money.]
    <i>You hear the smile in Kai's voice.</i>

    Heck yeah. Well, find the right career and you can. Just remember to let me borrow a few bucks every now and again, okay?
    
    **[(CONTINUE)]
        ->Kai221

*[To just be happy.]
    <i>You hear the smile in Kai's voice.</i>
    
    Solid, I feel that. At the end of the day, that's what matters most.
    
    **[(CONTINUE)]
        ->Kai221
    
===Kai221===
<i>You hear Kai get up.</i>

Anyway, I should probably head home before my mom starts to freak out. I'll walk home with you, though.

#SFX: StandUpFromBench

*[(CONTINUE)]
->Kai222

===Kai222===
<i>Half-an-hour later, you and Kai arrive at your house. Kai says:</i>

It was awesome hanging out with you today, {player_name}. We should do this again!

#Ambiance: None

*[We definitely should!]
    Sweet, I'll hit you up sometime. Or, y'know, kidnap you again.
    
    <i>He laughs.</i>
    ->Kai223
    
*[I'll think about it.]
    No worries, only if you've got the time. Whenever works for you.
    ->Kai223
    
*[Just don't kidnap me again.]
    <i>Kai laughs.</i>
    
    Ha! No promises.
    ->Kai223
    
===Kai223===
<i>You hear Kai's board hit the pavement as he skates his way down the hill.</i>

Catch you later, {player_name}!

#SFX: SkateboardLeave

*[(CONTINUE)]
    ->UnclePepTalk201

=== UnclePepTalk201 ===
<i>A few days go by, but there's still no word on your job {number_of_applied_jobs > 1:applications|application}.</i>

<i>One evening before dinner, your uncle stops by your room.</i>

Hey, {player_name}, how're you feeling?

#SFX: DoorOpenCreak

*[A bit worried.]
    Yeah, no surprise there. With jobs, waiting's one of the hardest parts.
    ->UnclePepTalk202

*[Not too bad.]
    That's good. Waiting to hear back can be stressful, but I'm glad to hear you're keeping your head above water.
    ->UnclePepTalk202

*[Why do you ask?]
    Just checking in, is all. Waiting to hear back about a job application can be really stressful.
    ->UnclePepTalk202
    
===UnclePepTalk202===
<i>You hear the springs creak as Uncle Scott sits down besides you on your bed.</i>

It hasn't been that long. You might still hear back from them, or you might not. Either way, the most important thing to remember is that you did your best.

#SFX: BedSpringsSitDown

*[(CONTINUE)]
->UnclePepTalk203

===UnclePepTalk203===
So, if you get an interview, that's fantastic. But most of the time you won't, and that's perfectly okay. Just keep applying. If you stick with it you'll find a job, I promise.
    ->UnclePepTalk204

===UnclePepTalk204===
+[How long did it take you to find your first job?]
    ->UnclePepTalk205a

+[What if I need help?]
    ->UnclePepTalk205b

+[Thanks, Uncle Scott]
    ->UnclePepTalk206

===UnclePepTalk205a===
After losing my sight? Quite a while. I got rejection after rejection, and some days I just wanted to give up. That's why I was lucky to have Tilly around. She was always there to pick me up and dust me off, and refused to let me give up on myself.

<i>Uncle Scott laughs.</i>

Your aunt doesn't take no for an answer.
->UnclePepTalk204

===UnclePepTalk205b===
That's what your Aunt and I are here for. I'm sure your friends Ren and Kai will be there for you, too. You ever need advice, assistance, or any kind of moral support, you just let us know.
->UnclePepTalk204

===UnclePepTalk206===
<i>Uncle Scott smiles as he says:</i>

Anytime, {player_name}. Now, why don't you help me get the table set for dinner?

#SFX: BedSpringsStandUp

*[(CONTINUE)]
->ApplicationResults201

===ApplicationResults201===

//ADD CODE TO JUDGE THE PLAYER'S SUCCESS/FAILURE HERE

//Checks to see if which interview on the list is the "first" one the player got (order is arbitrary, "first" doesn't mean anything significant)
{
    -applied_to_hotel_pool == true && earned_hotel_interview == true: 
        ->ApplicationResults202a
    -applied_to_plant_shop == true && earned_nursery_interview == true: 
        ->ApplicationResults202b
    -applied_to_coffee_shop == true && earned_cafe_interview == true:
        ->ApplicationResults202c
    -else:
        ->ApplicationResults202d
}

===ApplicationResults202a===
//Got a hotel pool interview!
<i>You follow your uncle out of your room and downstairs towards the dining room. Just then, you feel your phone vibrate in your pocket, reading out the caller ID. It's the Lilymist Hotel!</i>

#SFX: PhoneVibrate

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Sounds like this is your moment. Good luck, {player_name}!
    
    <i>You quickly take the phone out of your pocket and put it to your ear. You hear a warm, mature voice on the other end:</i>
    
    Hello, there! Is this {player_name}?
    
    **[Yes, that's me.]
        Ah, good! I'm reaching out to let you know that we've decided to move forward with your application. Congratulations on making it this far!
        ->ApplicationResults203a
    
    **[Did I get the interview?]
        <i>The man laughs.</i>
        
        That you did, {player_name}. Congratulations on making it this far!
        ->ApplicationResults203a
    
    **[Who wants to know?]
        Uh, this is Gordon, the hiring manager at the Lilymist Hotel. I'm reaching out to let you know that we've decided to move forward with your application. Congratulations on making it this far!
        ->ApplicationResults203a
        
===ApplicationResults203a===
The next step would be for us to schedule an interview. This would take place in-person here at the hotel, and would last about thirty minutes. Are you available in the next couple of days?
    
*[Yes, definitely!]
    Great! ->ApplicationResults204a
    
*[I'll have to check my calendar.]
    Sounds good. ->ApplicationResults204a
    
*[Probably not.]
    No problem, we can reschedule for a later time. ->ApplicationResults204a

===ApplicationResults204a===
I'll send you an email with a list of scheduling options. Fill it out when you can, and we'll use that to pick a time. Sound good?
    
*[Yes, thank you!]
    Don't mention it. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205a
    
*[Sounds good.]
    Alright. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205a
        
*[Okay, I guess.]
    Alright. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205a
        
===ApplicationResults205a===
<i>As you put your phone down, you hear Aunt Tilly hurrying up the stairs. She eagerly says:</i>

Was that about an interview? Did {player_name} get it?

<i>Uncle Scott replies:</i>

Sure sounded like it. Congratulations, {player_name}. Well done.

#SFX: HurryingUpStairs

*[(CONTINUE)]
->ApplicationResults206a

===ApplicationResults206a===
//Checks to see if the player got interviews at the other two places.
{
    -applied_to_plant_shop == true && earned_nursery_interview == true && applied_to_coffee_shop == true && earned_cafe_interview == true: 

        //Also a nursery and cafe interview!
        <i>Over the next few days, you get similar calls from both the Crumble Café and Greenmoss Nursery. You performed well enough on your applications to get interviews with them as well!</i>
        
    -applied_to_plant_shop == true && earned_nursery_interview == true: 
        
        //Also a nursery interview!
        <i>The next day, you get a similar call from Greenmoss Nursery. They want to interview you as well!</i>
        {applied_to_coffee_shop == true:<i>Unfortunately, no one at the Crumble Café ever responds to your application.</i>}
        
    -applied_to_coffee_shop == true && earned_cafe_interview == true:
        
        //Also a cafe interview!
        <i>The next day, you get a similar call from the Crumble Café. They want to interview you as well!</i>
        {applied_to_plant_shop == true:<i>Unfortunately, no one at Greenmoss Nursery ever responds to your application.</i>}
        
            -applied_to_coffee_shop == true && applied_to_plant_shop == true:
        <i>Unfortunately, no one at Greenmoss Nursery or the Crumble Café ever responds to your applications.</i>
    
    -applied_to_coffee_shop == true:
        <i>Unfortunately, no one at the Crumble Café ever responds to your application.</i>
        
    -applied_to_plant_shop == true:
        <i>Unfortunately, no one at the Greenmoss Nursery ever responds to your application.</i>
}
->PickAJob201

===ApplicationResults202b===
//Got a nursery interview!
<i>You follow your uncle out of your room and downstairs towards the dining room. Just then, you feel your phone vibrate in your pocket, reading out the caller ID. It's Greenmoss Nursery!</i>

#SFX: PhoneVibrate

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Sounds like this is your moment. Good luck, {player_name}!
    
    <i>You quickly take the phone out of your pocket and put it to your ear. You hear a light, chipper voice on the other end:</i>
    
    Hello, there! This is Matilda from Greenmoss Nursery. I'm reaching out to let you know that we wanted to schedule an interview with you in a few days!
    
    **[Wow, that's great!]
        Yes, I'm looking forward to getting to know you better!
        ->ApplicationResults203b
    
    **[Thanks for letting me know.]
        Of course! I'm looking forward to getting to know you better.
        ->ApplicationResults203b
    
    **[Alright, I guess.]
        Uh, great!
        ->ApplicationResults203b

===ApplicationResults203b===
The next step would be for us to schedule an interview. This would take place in-person here at Greenmoss Nursery, and would last about thirty minutes. Are you available in the next couple of days?
    
*[Yes, definitely!]
    Great! ->ApplicationResults204b
    
*[I'll have to check my calendar.]
    Sounds good! ->ApplicationResults204b
    
*[Probably not.]
    No problem at all! I can schedule things for a later time if that works better for you. ->ApplicationResults204b

===ApplicationResults204b===
I'll send you an email with a list of scheduling options. Fill it out when you can, and we'll use that to pick a time. Sound good?
    
*[Yes, thank you!]
    Of course. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205b
    
*[Sounds good.]
    Wonderful. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205b
        
*[Okay, I guess.]
    Alright, then. Have a good evening, and we'll talk more soon!
    ->ApplicationResults205b
    
===ApplicationResults205b===
<i>As you put your phone down, you hear Aunt Tilly hurrying up the stairs. She eagerly says:</i>

Was that about an interview? Did {player_name} get it?

<i>Uncle Scott replies:</i>

Sure sounded like it. Congratulations, {player_name}. Well done.

#SFX: HurryingUpStairs

*[(CONTINUE)]
->ApplicationResults206b

===ApplicationResults206b===
//Checks to see if the player got an interview at the cafe. (Doesn't check for hotel, because that's already been checked for)
{
    -applied_to_coffee_shop == true && earned_cafe_interview == true:
        
        //Also a cafe interview!
        <i>The next day, you get a similar call from the café. They want to interview you as well!</i>
        {applied_to_hotel_pool == true:<i>Unfortunately, you get an email from the Lilymist Hotel saying that they've decided not to move forward with you as a candidate.</i>}

    -applied_to_hotel_pool == true && applied_to_coffee_shop == true: 
        
        <i>Unfortunately, the Crumble Café never responds to your application, and you get an email from the Lilymist Hotel saying that they've decided not to move forward with you as a candidate.</i>
        
    -applied_to_hotel_pool == true:
    
        <i>Unfortunately, you get an email from the Lilymist Hotel saying that they've decided not to move forward with you as a candidate.</i>
        
    -applied_to_coffee_shop == true:
    
        <i>Unfortunately, the Crumble Café never responds to your application.</i>
}
->PickAJob201

===ApplicationResults202c===
//Got a cafe interview! And that's it.
<i>You follow your uncle out of your room and downstairs towards the dining room. Just then, you feel your phone vibrate in your pocket, reading out the caller ID. It's the Crumble Café!</i>

#SFX: PhoneVibrate

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Sounds like this is your moment. Good luck, {player_name}!
    
    <i>You quickly take the phone out of your pocket and put it to your ear. You hear an older voice on the other end:</i>
    
    Hello, {player_name}? This is Herb from the Crumble Café. I was wondering if you could come in for an interview this week.
    
    **[Yes, definitely!]
        Sounds good. ->ApplicationResults203c
    
    **[I'll have to check my calendar.]
        Alright, then. ->ApplicationResults203c
    
    **[Probably not.]
        Alright, no problem. Let's find a time that works for both of us. ->ApplicationResults203c

===ApplicationResults203c===
I'll send you an email with a list of scheduling options. Fill it out when you can, and we'll use that to pick a time. Sound good?
    
*[Yes, thank you!]
    Sure thing. You have a good evening. Talk soon.
    ->ApplicationResults204c
    
*[Sounds good.]
    Great, we'll talk soon. Have a good evening.
    ->ApplicationResults204c
        
*[Okay, I guess.]
    Alright. Have a good evening. We'll talk soon.
    ->ApplicationResults204c

===ApplicationResults204c===
<i>As you put your phone down, you hear Aunt Tilly hurrying up the stairs. She eagerly says:</i>

Was that about an interview? Did {player_name} get it?

<i>Uncle Scott replies:</i>

Sure sounded like it. Congratulations, {player_name}. Well done.

#SFX: HurryingUpStairs

*[(CONTINUE)]
->ApplicationResults205c

===ApplicationResults205c===
{
    -applied_to_hotel_pool == true && applied_to_plant_shop == true: 
        
        <i>Unfortunately, the Greenmoss Nursery never responds to your application, and you get an email from the Lilymist Hotel saying that they've decided not to move forward with you as a candidate.</i>
        
    -applied_to_hotel_pool == true:
    
        <i>Unfortunately, you get an email from the Lilymist Hotel saying that they've decided not to move forward with you as a candidate.</i>
        
    -applied_to_plant_shop == true:
    
        <i>Unfortunately, no one at Greenmoss Nursery ever responds to your application.</i>
}
->PickAJob201

===PickAJob201===
<i>A few days later, you're having lunch in the dining room when you hear Aunt Tilly step inside. She says:</i>

My, my, the day's barely half done and already I'm all tuckered out!

#SFX: DoorOpenCloseCreak

*[(CONTINUE)]
->PickAJob201a

===PickAJob201a===
<i>Aunt Tilly slips out of her boots and pulls up a chair.</i>

Speaking of work, sounds like you've got some thinking to do now that you've heard back about your job applications. What do you think you're going to focus on first?

#SFX: WoodenChairPullOut

{earned_hotel_interview: 
*[Preparing for the hotel interview.]
    ~current_interview_employer = "hotel"
    The hotel sounds like a great place to work! If you take the time to prepare for the interview, I'm sure you'll do well.
**[(CONTINUE)]
    ->PickAJob205
}

{earned_nursery_interview: 
*[Preparing for the nursery interview.]
    ~current_interview_employer = "nursery"
    Wonderful! I've always loved that place. If you take the time to prepare for the interview, I'm sure you'll do well.
    **[(CONTINUE)]
    ->PickAJob205
}

{earned_cafe_interview: 
*[Preparing for the café interview.]
    ~current_interview_employer = "cafe"
    How fun! If you take the time to prepare for the interview, I'm sure you'll do well.
**[(CONTINUE)]
    	->PickAJob205
}

+[I'm not sure.]
    Well, now that you're in the interview stage of things, the most important thing is to make sure you're prepared. You'll want to put your best foot forward. That means dressing well, acting in a professional manner, and being prepared to answer all of the interviewer's questions.
    It might sound scary at first, but you'll get the hang of it!
    ->PickAJob204

===PickAJob204===
{earned_hotel_interview: 
*[Preparing for the hotel interview.]
    ~current_interview_employer = "hotel"
    The hotel sounds like a great place to work! If you take the time to prepare for the interview, I'm sure you'll do well.
**[(CONTINUE)]
    ->PickAJob205
}

{earned_nursery_interview: 
*[Preparing for the nursery interview.]
    ~current_interview_employer = "nursery"
    Wonderful! I've always loved that place. If you take the time to prepare for the interview, I'm sure you'll do well.
    **[(CONTINUE)]
    ->PickAJob205
}

{earned_cafe_interview: 
*[Preparing for the café interview.]
    ~current_interview_employer = "cafe"
    How fun! If you take the time to prepare for the interview, I'm sure you'll do well.
**[(CONTINUE)]
    	->PickAJob205
}

+[I'm not sure.]
    Well, now that you're in the interview stage of things, the most important thing is to make sure you're prepared. You'll want to put your best foot forward. That means dressing well, acting in a professional manner, and being prepared to answer all of the interviewer's questions.
    It might sound scary at first, but you'll get the hang of it!
    ->PickAJob204
    
===PickAJob205===
<i>You go to sleep that night wondering about what lies ahead of you. What do you need to prepare for your interview? How will it go? Will you land the job?</i>
        
<i>Nothing's certain yet, but you're sure that all your questions will be answered soon.</i>

#Ambiance: None

*[(Complete Chapter 2)]
    ->Complete_Chapter_2
    
=== Complete_Chapter_2 ===
#CHAPTER COMPLETE: 2
    ->DONE

===ApplicationResults202d===
<i>A couple more days go by</i>
{
    -applied_to_hotel_pool == true && applied_to_plant_shop == true && applied_to_coffee_shop == true: <i>Unfortunately, you don't get responses to your applications to the nursery or the café. Meanwhile, the hotel sends you an email saying that they've decided not to move forward with you as a candidate.</i>
    
    -applied_to_hotel_pool == true && applied_to_plant_shop == true:
    <i>Unfortunately, you don't get a response to your Greenmoss Nursery application. Meanwhile, the hotel sends you an email saying that they've decided not to move forward with you as a candidate.</i>
    
    -applied_to_hotel_pool == true && applied_to_coffee_shop == true:
    <i>Unfortunately, you don't get a response to your Crumble Café application. Meanwhile, the hotel sends you an email saying that they've decided not to move forward with you as a candidate.</i>
    
    -applied_to_plant_shop == true && applied_to_coffee_shop == true: <i>Unfortunately, you don't get responses to your applications to the nursery or the café.</i>
    
    -applied_to_plant_shop == true: <i>Unfortunately, you don't get a responses to your Greenmoss Nursery application.</i>
    
    -applied_to_coffee_shop == true: <i>Unfortunately, you don't get a responses to your Crumble Café application.</i>
 
    -applied_to_hotel_pool == true: <i>Unfortunately, the hotel sends you an email saying that they've decided not to move forward with you as a candidate.</i>
}

*[(CONTINUE)]
->ApplicationResults203d

===ApplicationResults203d===
<i>One day, you're sitting outside on the front steps when you hear Ren's voice coming up the sidewalk:</i>

Hi, {player_name}! How're you doing? How's the job search going?

#Ambiance: BirdsChirping

*[It's going.]
    Yeah, I know what you mean. Don't lose hope, though!
    ->ApplicationResults204d

*[It could be better.]
    Sometimes it can be hard, for sure. Don't lose hope, though!
    ->ApplicationResults204d

*[It's really hard.]
    Yeah, I know what you mean. Don't lose hope, though!
    ->ApplicationResults204d

===ApplicationResults204d===
I've never heard of anyone who ever applied for a job and gotten it on the first try. Kai told me that he had to apply to five different jobs last summer before he got anything.
{
    -applied_to_hotel_pool == true && applied_to_plant_shop == true && applied_to_coffee_shop == true:
    
    You've applied to the hotel, the nursery, and the café, right?
    
    *[Is there anywhere else I can apply?]
        There's probably someone else in town who's hiring. Hmm.
        ->FreeInterview201
    
    *[Should I reapply to any of those places?]
        Probably not. You could always apply again in the future, but I think now is probably too soon. Hmm.
        ->FreeInterview201
    
    *[What should I do now?]
        Aside from apply to new places? I'm not sure. Hmm.
        ->FreeInterview201
        
    -else:
    
    I think there are a few more places in town you can still apply to. Keep it up, {player_name}! You'll get something eventually, I know it.
    ->TryApplyingAgain201
    
}
    
===TryApplyingAgain201===
->DONE
//IMPLEMENT REDOING CONTENT HERE

===FreeInterview201===
<i>Ren claps her hands together and says:</i>
Wait, I've got it! You remember that friend of mine, Sandra?

#SFX: RenClapping

*[Yes, I do.]
    Yeah! She used to work at the Greenmoss Nursery, but she got fired recently. I think she was late a few too many times.
    ->FreeInterview202

*[I don't think so.]
    We met her when I was giving you a tour of the town. She used to work at the Greenmoss Nursery, but she just got fired for being late too many times.
    ->FreeInterview202

*[Should I?]
    We met her when I was giving you a tour of the town. She used to work at the Greenmoss Nursery, but she just got fired for being late too many times.
    ->FreeInterview202

===FreeInterview202===
*[Oof, that's rough.]
    <i>Ren sighs.</i>
    
    Yeah, I feel bad for her, too. I mean, sometimes things happen and you can't make it on time to your shift. But it's important to at least try.
    But here's the thing, ->FreeInterview203

*[She needs to try harder.]
    <i>Ren sighs.</i>
    
    Yeah, maybe you're right. I mean, sometimes things happen and you can't make it on time to your shift. But it's important to at least try.
    But here's the thing, ->FreeInterview203

*[What does this have to do with me?]
    Well, here's the thing, ->FreeInterview203
    
===FreeInterview203===
I know the person who owns Greenmoss Nursery. Now that Sandra doesn't work there anymore, the owner is looking for someone to take her place. Maybe I could put in a good word for you, get her to give you an interview!
->FreeInterview204

===FreeInterview204===
+[That would be great!]
    ->FreeInterview205

+[Shouldn't you help Sandra instead?]
    I would, but I don't think the owner is very happy with her. They'd rather have somebody new.
    ->FreeInterview204
    
+[I'd rather earn it myself.]
    Yeah, I know. You won't always have people who can help you out like this, it's true, but I'm happy to do it now. Besides, you'll still have to ace the interview on your own.
    ->FreeInterview204
    
===FreeInterview205===
~earned_nursery_interview = true

Okay! I'll reach out to Matilda and see if she'd be willing to give you an interview. My mom knows her too, so that might help. I'll let you know how it goes!

*[(CONTINUE)]
    <i>The next day, Ren texts you. Matilda, the owner of Greenmoss Nursery, has agreed to give you an interview! You give the good news to your aunt and uncle.</i>
    
    **[(CONTINUE)]
        ->PickAJob201

//---------- CHAPTER 3 ----------
=== Chapter_3_Start ===
<i>You wake up one morning to the sound of your phone going off on your nightstand. Confused, you listen for the caller ID. It's Kai.</i>

*[(Answer it)]
    <i>You pick up the phone and put it to your ear. Kai's cheery, hyped-up voice reaches your ears.</i>
    
    Hey, {player_name}! How's it going? I heard you've got a job interview coming up! How you feeling?
    
    **[I'm going to ace it!]
    Nice, nice! I'll keep my fingers crossed for you.

        ->Morning301
    
    **[I'm definitely nervous.]
    Word, I feel. That stuff can be stressful. But, yeah, just try to relax. I'm sure you're gonna crush it.

        ->Morning301
    
    **[I'm not going to think about it too much.]
    Just be careful, you probably want to do some prep first, y'know?

        ->Morning301

*[(Let it ring)]
    <i>Eventually it stops ringing. As you get out of bed, you check your voicemail:</i>
    
    Hey, what's up, {player_name}! Just wanted to call to wish you good luck on your interview at the {current_interview_employer}. I was skating out front of your house this morning and your aunt told me. Good luck, you got this!
    ->Morning303
    
===Morning301===
Anyway, I just wanted to wish you luck. I was skating by your house earlier and your aunt told me that you'd snagged an interview at the {current_interview_employer}. You got this, {player_name}!

*[Thanks, that means a lot!]
Anytime! I'm happy to help however I can.
->Morning302

*[I hope you're right.]
Don't sweat it. Just try your best and I'm sure you'll do fine.
->Morning302

*[I have no idea what I'm doing.]
Heh, yeah. I felt that way when I was doing interviews for my first summer job. Just try your best and I'm sure you'll do fine.
->Morning302

===Morning302===
Anyway, I'd better jet. I'm supposed to meet Carl to talk about his party in a week. I gotta make sure that everything's perfect with my DJ set. This'll be my big moment.

*[You're going to do great, I know it.]
Thanks, {player_name}! I'll do my best, that's for sure.
->Morning303

*[Try not to worry about it.]
Nah, I'm not like, "worried," or anything. I just want to make sure I do a good job is all.
->Morning303

*[Don't mess up.]
<i>Kai laughs.</i>

I'll try my best.
->Morning303

===Morning303===
Oh, and if you've got some free time we should hang out.{kai_music_festival: Chilling at the music festival with you was fun, and the sample you recorded for me was dope!} Anyway, later, {player_name}!

<i>You hear him hang up.</i>

*[(CONTINUE)]
->Morning304

===Morning304===
<i>You roll out of bed and get dressed. Heading downstairs, you hear Aunt Tilly and Uncle Scott coming in through the front door. Uncle Scott says:</i>

Why hello there {player_name}. Rise and shine!

<i>You hear Tilly hefting what sound like heavy bags as she says:</i>

//sweetheart good for tilly-speak?
Good morning sweetheart! Scott, hand me the other bag and I'll bring it to the kitchen table.

*[Where were you?]
<i>Aunt Tilly says:</i>

Oh, just downtown.
->Morning305

*[What's in those bags?]
<i>Aunt Tilly says:</i>

Just some vegetables, fruits, and other goodies.
->Morning305

*[Do you need some help?]
<i>Aunt Tilly says:</i>

That's alright dear! I've got it.
->Morning305

===Morning305===
<i>Uncle Scott says:</i>

There was a big farmers market in town this morning and I thought we should take full advantage. With those tomatoes I can make some of my world-famous homemade tomato sauce.

*[(CONTINUE)]
<i>You can hear Aunt Tilly come back from the kitchen and kiss his cheek.</i>

Just make enough for all of us dear.

Now {player_name}, you've got an interview at the {current_interview_employer} in a few days, right? You'll need to get yourself ready.
->Morning306

//SUBJECT TO REVISION
//Maybe move some of this later
//Maybe ask for feedback
===Morning306===
+[What should I do before the interview?]
<i>Aunt Tilly says:</i>

Well, the first thing I think you should do is get yourself some good interview clothes. You'll want to look nice.

    ++[(CONTINUE)]
    <i>Uncle Scott chimes in.</i>
    
    //Do his pointers live up to the hype?
    Otherwise, you should reread the job description to get a sense of what the interviewer is looking for, and then prepare for common interview questions. I'll give you a few pointers on that at dinner tonight.
    ->Morning306
    
+[Are there any special tips you can give me?]
<i>Aunt Tilly says:</i>

The best tip I can think of is to be polite and professional. That, and be yourself.

<i>Uncle Scott adds:</i>

Right, but also remember that your interviewer probably hasn't interviewed a lot of folks who are blind. You'll need to go the extra mile to demonstrate that you're capable. I'll tell you a few tricks I learned for that sometime.
->Morning306

+[Got it.]
->Morning307

===Morning307===
<i>Aunt Tilly says:</i>

//Weird to say this if the player might fail?
I'm sure you'll do great {player_name}. Now, about getting clothes for the interview.

<i>Aunt Tilly approaches you and gently slips some money into your hand.</i>

Here, why don't you go out shopping? There's a great clothing store downtown where you can pick out some nice interview-wear.
->Morning308

//Get feedback on clothing choice
===Morning308===
+[What should I buy?]
<i>Aunt Tilly says:</i>

Something professional. When I was interviewing for jobs, I would wear a skirt and a nice blouse.

<i>Uncle Scott adds:</i>
My go-to was a button-down shirt and a pair of slacks. You can pick whatever you want to wear as long as it fits in with a workplace setting.
->Morning308

+[How much money is this?]
<I>Aunt Tilly says:</i>
{moneyGiven} dollars. Should be enough to get you something that looks nice.
->Morning308

+[But I'm blind. Why does it matter how I look?]
<i>Uncle Scott says:</i>

Dressing well is a sign of professionalism. It shows other people that you take your job seriously and that you're ready to join the working world.
    
Making good impressions is important, especially in interviews like this. Dressing well is a great way to put your best foot forward.
->Morning308

+[Thank you, Aunt Tilly.]
->Morning309

===Morning309===
Of course {player_name}! I'd recommend going out sometime today. I always shop at Lindy's Apparel downtown. I'm sure they'd love to see another customer.

*[You're not coming with me?]
I'm afraid I can't dear. I can drive you there, but I have a mountain of bills that I promised myself I'd pay today. You could always go with your friends Ren and Kai.

<i>Uncle Scott adds:</i>

I'd recommend that, actually. It's helpful to have a sighted person along when you go clothes shopping.
->Morning310

*[Sounds good.]
<i>Uncle Scott adds:</i>

I'd recommend asking one of your friends to go with you. It's helpful to have a sighted person along when you go clothes shopping.
->Morning310

===Morning310===
*[That sounds like a good idea.]
->Morning311

*[I'll think about it.]
->Morning311

===Morning311===
<i>Aunt Tilly says:</i>

Great! Just give me a moment and I'll drive you downtown. 

But remember {player_name}, you only have {moneyGiven} dollars. Buy something that looks nice, but don't break the bank!

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Good luck {player_name}. If you need anything, I'll be here getting tomato stains on my shirt.
    
    <i>He chuckles, then makes his way over to the kitchen.</i>
    
    **[(CONTINUE)]
    ->Morning312

//REVISIT JEANETTE's VOICE
===Morning312===
<i>Remembering that Kai is visiting someone about his DJ set, you wonder if Ren might be around to help you shop. You send her a text, and she asks you to meet her at the River House Café.</i>

*[(CONTINUE)]
    <i>As Aunt Tilly drops you off, you make your way inside. The sound of oldies rock is just barely audible over the noise of what must be an entire town's worth of people.<i>
    
    <i>You hear someone approach you and call out. It's Ren's mom.</i>
    
    Why hi {player_name}! Whew, what a day.
    
    **[What's going on?]
    ->Morning313
        
    **[What's the big occasion?]
    ->Morning313

===Morning313===
Oh, nothing too out of the blue. We're always this busy on Saturdays round this time. Folks can't get enough of our peach cobbler, I spose!

Anywho, Ren will be out here in a sec. She's just getting her stuff.

<i>You hear Ren's mom turn away, then stop.</i>

Oh shoot, I nearly forgot! {player_name}, would you mind doing me a small favor?

*[What do you need?]
->Morning314

*[Sure.]
->Morning314

*[Depends what it is.]
->Morning314

===Morning314===
I just need you to give Ren something for me. It came in the mail this morning and I—.

<i>Just then, you hear one of the diner patrons call out to her. She calls back:</i>

I'll be right there hon! Sorry {player_name}, I should help them. Just give Ren this envelope and tell her that it came from the program. She'll know what it means.

<i>She hands you a small, letter-sized envelope.</i>

*["Program"? What program?]
A little something she's been thinking about for a while now. I'm sure she'd be happy to tell you more.

For the life of me I don't know why that girl hasn't applied for next summer's session yet. You'd think it would be totally up her alley!

    **[(CONTINUE)]
    ->Morning315

*[Is Ren going somewhere?]
Not anytime soon. They turned her down for this summer, so she wouldn't be leaving until a year from now.

For the life of me I don't know why that girl hasn't applied for next summer's session yet. You'd think it would be totally up her alley!

    **[(CONTINUE)]
    ->Morning315

*[Sure.]
Why thank ya, {player_name}! I do appreciate it.

    **[(CONTINUE)]
    ->Morning315

===Morning315===
<i>She heads quickly away, talking in a bright, cheery voice to someone sitting at one of the diner booths.</i>

<i>Just then, you hear Ren approach.</i>

Hey {player_name}! Whew, welcome to the River House on a busy Saturday. Thanks for the rescue, I thought I'd never be able to get out of here before late afternoon.

<i>Ren pauses for a moment.</i>

Oh hey, what's that in your hand?

*[A letter, I think.]
->Morning316

*[Your mom wanted me to give it to you.]
->Morning316

*[What's this "program" you're interested in?]
->Morning316

===Morning316===
<i>You hand the letter to Ren. She takes it from you, then sighs.</i>

Oh. It's another letter from the Literary Frontiers program. I wish they'd stop sending these.

<i>You hear the sound of plastic meeting paper as she tosses it into a trash bin.</i>

*[You sure you want to throw that out?]
Yeah, I dunno. They'll probably just send me another one anyway.

    **[(CONTINUE)]
    ->Morning317

*[Suit yourself.]
Yeah, I'm not really interested in them. Well, not that interested anyway.

    **[(CONTINUE)]
    ->Morning317

===Morning317===
<i>Ren is quiet for a moment. Then her voice brightens up again.</i>

Let's go. The last thing I want to do is spend our entire exciting shopping trip standing here thinking about the Literary Frontiers program.

*[(CONTINUE)]
->Shopping301

===Shopping301===
<i>You and Ren head out of the River House café and make your way downtown. The streets are busy with people going this way and that. You hear the swinging of doors and the chatter of people as they go in and out of various shops on the side of the street. Ren exclaims:</i>

//The worst sentence of all time
Wow, it's busier than usual today! Must be tourists coming to shop downtown.

*[(CONTINUE)]
->Shopping302

===Shopping302===
<i>After about two more minutes of walking, Ren slows down.</i>

Alright, this is probably what you're looking for: Lindy's Apparel. It's  not just a tourist boutique shop; it has a good selection of professional wear too.

*[Sounds good.]
->Shopping303

*[Let's get this over with.]
->Shopping303

===Shopping303===
<i>A small bell rings as you step inside the shop. You hear the sound of light music coming in over a radio, as the smell of wood, fabric, and scented candles greets your nose. Ren says hello to someone behind a counter, then turns to you.</i>

Okay, we're here! How much money did your aunt give you?

*[{moneyGiven} dollars.]
Got it! Yeah, that sounds like plenty.
->Shopping304

*[Enough, I guess.]
->Shopping304

===Shopping304===
You should keep good track of how much you have. Don't want to walk up to the cashier with more clothes than you can afford, y'know?

<i>Ren hands you a plastic basket.</i>

Here, you can use this to carry your stuff.

So, for your outfit you'll probably need a top, a bottom, and some nice shoes. I see sections for each of those things around here. Just let me know where you want to go, and I'll take you!

For starters, it looks like the store is divided into menswear and womenswear.

*[Let's start in menswear.]
Sounds good!
->ShoppingMenswear

*[Take me to womenswear first.]
Sounds good!
->ShoppingWomenswear

+[(Check basket)]
~currentDivert = ->Shopping304
->CheckShoppingCart

//MENSWEAR BEGINS HERE
===ShoppingMenswear===
~currentDivert = ->ShoppingMenswear

{
    -LIST_COUNT(shoppingCart) < 3:
    
        <i>You and Ren arrive in the menswear section.</i>
        {not (shoppingCart ? (badTop_Masc)) && not (shoppingCart ? (goodTop_Masc)) && not (shoppingCart ?  (greatTop_Masc)) && not (shoppingCart ? (badTop_Femm)) && not (shoppingCart ?  (goodTop_Femm)) && not (shoppingCart ? (greatTop_Femm)):  
        +[(Go to tops)] 
        ->ShoppingMensTops
        }
        
        {not (shoppingCart ? (badBottom_Masc)) && not (shoppingCart ? (goodBottom_Masc)) && not (shoppingCart ?  (greatBottom_Masc)) && not (shoppingCart ? (badBottom_Femm)) && not (shoppingCart ?  (goodBottom_Femm)) && not (shoppingCart ? (greatBottom_Femm)): 
        +[(Go to bottoms)]
        ->ShoppingMensBottoms
        }
        
        {not (shoppingCart ? (badShoes_Masc)) && not (shoppingCart ? (goodShoes_Masc)) && not (shoppingCart ?  (greatShoes_Masc)) && not (shoppingCart ? (badShoes_Femm)) && not (shoppingCart ?  (goodShoes_Femm)) && not (shoppingCart ? (greatShoes_Femm)):   
        +[(Go to shoes)]
        ->ShoppingMensShoes
        }
        
        +[(Go to the womenswear section)]
        ->ShoppingWomenswear
        
    -else:
    
         {
            -moneySpent > moneyGiven:
                <i>Ren says:</i>
                
                Hmm, that outfit might be a bit pricey. Are you sure you have enough money?
        
            -else:
                <i>Ren says:</i>
                
                I think you've got a full outfit, and all within your budget too! Ready to try your clothes on?
                
                +[(Go to changing room)]
                ->Shopping305
        }
}
    
    +[(Check basket)]
    ~currentDivert = ->ShoppingMenswear
    ->CheckShoppingCart

//Is this too many options?
===ShoppingMensTops===
<i>You make your way to a rack of shirts in the menswear section. Ren helps you go through the clothes, and you find a few t-shirts, a couple of dress shirts, and some polo shirts.</i>

<i>The t-shirts are 13 dollars, the dress shirts are 40 dollars, and the polo shirts are 20 dollars.</i>

+[(Take a t-shirt)]
~shoppingCart += shoppingCart.badTop_Masc
~moneySpent += 13
<i>You take a t-shirt and drop it in your basket.</i>
->ShoppingMenswear

+[(Take a dress shirt)]
~shoppingCart += shoppingCart.greatTop_Masc
~moneySpent += 40
<i>You take a dress shirt and drop it in your basket.</i>
->ShoppingMenswear

+[(Take a polo shirt)]
~shoppingCart += shoppingCart.goodTop_Masc
~moneySpent += 20
<i>You take a polo shirt and drop it in your basket.</i>
->ShoppingMenswear

+[(Check basket)]
~currentDivert = ->ShoppingMensTops
->CheckShoppingCart

===ShoppingMensBottoms===
<i>You make your way to a rack of pants in the menswear section.</i>

<i>You find dress pants for 40 dollars, khakis for 30 dollars, and shorts for 20 dollars.</i>

+[(Take a pair of dress pants)]
~shoppingCart += shoppingCart.greatBottom_Masc
~moneySpent += 40
<i>You drop the dress pants into your basket.</i>
->ShoppingMenswear

+[(Take a pair of khakis)]
~shoppingCart += shoppingCart.goodBottom_Masc
~moneySpent += 30
<i>You drop the khakis into your basket.</i>
->ShoppingMenswear

+[(Take a pair of shorts)]
~shoppingCart += shoppingCart.badBottom_Masc
~moneySpent += 20
<i>You drop the shorts into your basket.</i>
->ShoppingMenswear

+[(Check basket)]
~currentDivert = ->ShoppingMensBottoms
->CheckShoppingCart

===ShoppingMensShoes===
<i>You make your way to the shoe shelf in the menswear section.</i>

<i>You find flip-flops for 15 dollars, regular leather dress shoes for 50 dollars, and fancy wingtip shoes for 80 dollars.</i>

+[(Take the flip-flops)]
~shoppingCart += shoppingCart.badShoes_Masc
~moneySpent += 15
<i>You drop the flip-flops into your basket.</i>
->ShoppingMenswear

+[(Take the dress shoes)]
~shoppingCart += shoppingCart.goodShoes_Masc
~moneySpent += 50
<i>You drop the dress shoes into your basket.</i>
->ShoppingMenswear

+[(Take the wingtip shoes)]
~shoppingCart += shoppingCart.greatShoes_Masc
~moneySpent += 80
<i>You drop the wingtip shoes into your basket.</i>
->ShoppingMenswear

+[(Check basket)]
~currentDivert = ->ShoppingMensShoes
->CheckShoppingCart

//WOMENSWEAR BEGINS HERE
===ShoppingWomenswear===
~currentDivert = ->ShoppingWomenswear

{
    -LIST_COUNT(shoppingCart) < 3:

        <i>You and Ren arrive in the womenswear section.</i>
        {not (shoppingCart ? (badTop_Masc)) && not (shoppingCart ? (goodTop_Masc)) && not (shoppingCart ?  (greatTop_Masc)) && not (shoppingCart ? (badTop_Femm)) && not (shoppingCart ?  (goodTop_Femm)) && not (shoppingCart ? (greatTop_Femm)):  
        +[(Go to tops)]
        ->ShoppingWomensTops
        }
        
        {not (shoppingCart ? (badBottom_Masc)) && not (shoppingCart ? (goodBottom_Masc)) && not (shoppingCart ?  (greatBottom_Masc)) && not (shoppingCart ? (badBottom_Femm)) && not (shoppingCart ?  (goodBottom_Femm)) && not (shoppingCart ? (greatBottom_Femm)):  
        +[(Go to bottoms)]
        ->ShoppingWomensBottoms
        }
        
        {not (shoppingCart ? (badShoes_Masc)) && not (shoppingCart ? (goodShoes_Masc)) && not (shoppingCart ?  (greatShoes_Masc)) && not (shoppingCart ? (badShoes_Femm)) && not (shoppingCart ?  (goodShoes_Femm)) && not (shoppingCart ? (greatShoes_Femm)):  
        +[(Go to shoes)]
        ->ShoppingWomensShoes
        }
        
        
        +[(Go to the menswear section)]
        ->ShoppingMenswear

    -else:
    
        {
            -moneySpent > moneyGiven:
                <i>Ren says:</i>
                
                Hmm, that outfit might be a bit pricey. Are you sure you have enough money?
        
            -else:
                <i>Ren says:</i>
                
                I think you've got a full outfit, and all within your budget, too! Ready to try your clothes on?
                
                +[(Go to changing room)]
                ->Shopping305
        }
}

+[(Check basket)]
~currentDivert = ->ShoppingWomenswear
->CheckShoppingCart

//Sweater tops too warm? Not formal enough?
===ShoppingWomensTops===
<i>You make your way to a rack of tops in the womenswear section. You find a few t-shirts, a couple of satin blouses, and some sweater tops.</i>

<i>The t-shirts are 13 dollars, the satin blouses are 40 dollars, and the sweater tops are 20 dollars.</i>

+[(Take a t-shirt)]
~shoppingCart += shoppingCart.badTop_Femm
~moneySpent += 13
<i>You take a t-shirt and drop it in your basket.</i>
->ShoppingWomenswear

+[(Take a blouse)]
~shoppingCart += shoppingCart.greatTop_Femm
~moneySpent += 40
<i>You take a blouse and drop it in your basket.</i>
->ShoppingWomenswear

+[(Take a sweater top)]
~shoppingCart += shoppingCart.goodTop_Femm
~moneySpent += 20
<i>You take a sweater top and drop it in your basket.</i>
->ShoppingWomenswear

+[(Check basket)]
~currentDivert = ->ShoppingWomensTops
->CheckShoppingCart

===ShoppingWomensBottoms===
<i>You make your way to a rack of skirts and pants in the womenswear section.</i>

<i>You find skirts for 30 dollars and shorts for 20 dollars. Ren also points out that you can get a dark skirt and formal tights for 40 dollars altogether.</i>

+[(Take just a skirt)]
~shoppingCart += shoppingCart.goodBottom_Femm
~moneySpent += 30
<i>You drop the skirt into your basket.</i>
->ShoppingWomenswear

+[(Take a pair of shorts)]
~shoppingCart += shoppingCart.badBottom_Femm
~moneySpent += 20
<i>You drop the shorts into your basket.</i>
->ShoppingWomenswear

+[(Take a skirt and some formal tights)]
~shoppingCart += shoppingCart.greatBottom_Femm
~moneySpent += 40
<i>You drop the skirt and tights into your basket.</i>
->ShoppingWomenswear

+[(Check basket)]
~currentDivert = ->ShoppingWomensBottoms
->CheckShoppingCart

//Are ballet flats that pricey?
===ShoppingWomensShoes===
<i>You make your way to the shoe shelf in the womenswear section.</i>

<i>You find flip-flops for 15 dollars, comfortable ballet flats for 50 dollars, and a pair of black pumps for 80 dollars.</i>

+[(Take the flip-flops)]
~shoppingCart += shoppingCart.badShoes_Masc
~moneySpent += 15
<i>You drop the flip-flops into your basket.</i>
->ShoppingWomenswear

+[(Take the ballet flats)]
~shoppingCart += shoppingCart.goodShoes_Femm
~moneySpent += 50
<i>You drop the ballet flats into your basket.</i>
->ShoppingWomenswear

+[(Take the pumps)]
~shoppingCart += shoppingCart.greatShoes_Femm
~moneySpent += 80
<i>You drop the pumps into your basket.</i>
->ShoppingWomenswear

+[(Check basket)]
~currentDivert = ->ShoppingWomensShoes
->CheckShoppingCart

===CheckShoppingCart===
//A good central place to set this variable back to false, in the event that the player goes back to try a different set of clothes
~askedAboutClothingFit = false

{
-LIST_COUNT(shoppingCart) > 0:
<i>In your basket there is:</i> 
    
    //TEXT SHOWING WHAT YOU HAVE
    {shoppingCart ? (shoppingCart.badTop_Masc):
           <i>A 13-dollar t-shirt.</i>
    }
                
    {shoppingCart ? (shoppingCart.goodTop_Masc):
            <i>A 20-dollar polo shirt.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatTop_Masc):
            <i>A 40-dollar dress shirt.</i>
    }
        
    {shoppingCart ? (shoppingCart.badBottom_Masc):
            <i>A 20-dollar pair of shorts.</i>
    }    
    
    {shoppingCart ? (shoppingCart.goodBottom_Masc):
            <i>A 30-dollar pair of khakis.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatBottom_Masc):
            <i>A 40-dollar pair of dress pants.</i>
    }
        
    {shoppingCart ? (shoppingCart.badShoes_Masc):
            <i>A 15-dollar pair of flip-flops.</i>
    }
        
    {shoppingCart ? (shoppingCart.goodShoes_Masc):
            <i>A 50-dollar pair of dress shoes.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatShoes_Masc):
            <i>An 80-dollar pair of wingtip shoes.</i>
     }   
        
    {shoppingCart ? (shoppingCart.badTop_Femm):
            <i>A 13-dollar t-shirt.</i>
    }
        
    {shoppingCart ? (shoppingCart.goodTop_Femm):
            <i>A 20-dollar sweater top.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatTop_Femm):
            <i>A 40-dollar satin blouse.</i>
    }
        
    {shoppingCart ? (shoppingCart.badBottom_Femm):
            <i>A 20-dollar pair of shorts.</i>
    }
        
    {shoppingCart ? (shoppingCart.goodBottom_Femm):
            <i>A 30-dollar skirt.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatBottom_Femm):
            <i>A 40-dollar skirt-and-tights combo.</i>
    }
        
    {shoppingCart ? (shoppingCart.badShoes_Femm):
            <i>A 15-dollar pair of flip-flops.</i>
    }
        
    {shoppingCart ? (shoppingCart.goodShoes_Femm):
            <i>A 50-dollar pair of ballet flats.</i>
    }
        
    {shoppingCart ? (shoppingCart.greatShoes_Femm):
            <i>An 80-dollar pair of black pumps
    }
    
    //DIALOGUE OPTIONS FOR PUTTING THINGS BACK
    {shoppingCart ? (shoppingCart.badTop_Masc):
    
        +[(Put back the t-shirt)]
        ~shoppingCart -= shoppingCart.badTop_Masc
        ~moneySpent -= 13
        ~renMakingPlayerPutSomethingBack = false
        <i>You put back the t-shirt.</i>
        ->CheckShoppingCart
    }
                
    {shoppingCart ? (shoppingCart.goodTop_Masc):
        
            +[(Put back the polo shirt)]
            ~shoppingCart -= shoppingCart.goodTop_Masc
            ~moneySpent -= 20
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the polo shirt.</i>
            ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatTop_Masc):
        
            +[(Put back the dress shirt)]
            ~shoppingCart -= shoppingCart.greatTop_Masc
            ~moneySpent -= 40
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the dress shirt.</i>
            ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.badBottom_Masc):
        
           +[(Put back the shorts)]
           ~shoppingCart -= shoppingCart.badBottom_Masc
            ~moneySpent -= 20
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the shorts.</i>
            ->CheckShoppingCart
    }    
    
    {shoppingCart ? (shoppingCart.goodBottom_Masc):
        
            +[(Put back the khakis)]
            ~shoppingCart -= shoppingCart.goodBottom_Masc
            ~moneySpent -= 30
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the khakis.</i>
            ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatBottom_Masc):
        
            +[(Put back the dress pants)]
            ~shoppingCart -= shoppingCart.greatBottom_Masc
            ~moneySpent -= 40
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the dress pants.</i>
            ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.badShoes_Masc):
        
            +[(Put back the flip-flops)]
            ~shoppingCart -= shoppingCart.badShoes_Masc
            ~moneySpent -= 15
            ~renMakingPlayerPutSomethingBack = false
            <i>You put back the flip-flops.</i>
            ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.goodShoes_Masc):
        
                +[(Put back the dress shoes)]
                ~shoppingCart -= shoppingCart.goodShoes_Masc
                ~moneySpent -= 50
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the dress shoes.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatShoes_Masc):
        
                +[(Put back the wingtip shoes)]
                ~shoppingCart -= shoppingCart.greatShoes_Masc
                ~moneySpent -= 80
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the wingtip shoes.</i>
                ->CheckShoppingCart
     }   
        
    {shoppingCart ? (shoppingCart.badTop_Femm):
        
                +[(Put back the t-shirt)]
                ~shoppingCart -= shoppingCart.badTop_Femm
                ~moneySpent -= 13
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the t-shirt.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.goodTop_Femm):
        
                +[(Put back the sweater top)]
                ~shoppingCart -= shoppingCart.goodTop_Femm
                ~moneySpent -= 20
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the sweater top.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatTop_Femm):
        
                +[(Put back the satin blouse)]
                ~shoppingCart -= shoppingCart.greatTop_Femm
                ~moneySpent -= 40
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the satin blouse.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.badBottom_Femm):
        
                +[(Put back the shorts)]
                ~shoppingCart -= shoppingCart.badBottom_Femm
                ~moneySpent -= 20
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the shorts.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.goodBottom_Femm):
        
                +[(Put back the skirt)]
                ~shoppingCart -= shoppingCart.goodBottom_Femm
                ~moneySpent -= 30
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the skirt.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatBottom_Femm):
        
                +[(Put back the skirt-and-tights combo)]
                ~shoppingCart -= shoppingCart.greatBottom_Femm
                ~moneySpent -= 40
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the skirt and tights.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.badShoes_Femm):
        
                +[(Put back the flip-flops)]
                ~shoppingCart -= shoppingCart.badShoes_Femm
                ~moneySpent -= 15
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the flip-flops.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.goodShoes_Femm):
        
                +[(Put back the ballet flats)]
                ~shoppingCart -= shoppingCart.goodShoes_Femm
                ~moneySpent -= 50
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the ballet flats.</i>
                ->CheckShoppingCart
    }
        
    {shoppingCart ? (shoppingCart.greatShoes_Femm):
        
                +[(Put back the pumps)]
                ~shoppingCart -= shoppingCart.greatShoes_Femm
                ~moneySpent -= 80
                ~renMakingPlayerPutSomethingBack = false
                <i>You put back the pumps.</i>
                ->CheckShoppingCart
    }
        
-else:
    <i>Your basket is empty.</i>
}

<i>You have {moneyGiven} dollars to spend.</i>   

{moneySpent <= moneyGiven && renMakingPlayerPutSomethingBack == false:
+[(Return to shopping)]
->currentDivert
}
        
===Shopping305===
<i>You follow Ren to the dressing room. She says:</i>

Just let me know when you're done, and I'll let you know how you look!

+[(Get changed)]
    <i>You step inside the changing room and change into the clothes you picked out. As you step out of the changing room, Ren appraises your new outfit:</i>
    
        {
            -not (shoppingCart ? (badTop_Masc)) && not (shoppingCart ? (badBottom_Masc)) && not (shoppingCart ? (badShoes_Masc)) && not (shoppingCart ? (badTop_Femm)) && not (shoppingCart ? (badBottom_Femm)) && not (shoppingCart ? (badShoes_Femm)):
            
                    ~well_dressed = true
            
                    Wow, you look great! Oh-my-gosh, super-professional for sure!
                    
                    ++[Yeah, thanks!]
                        No problem!
                        ->Shopping306
                    
                    ++[I feel weird in these clothes.]
                        Yeah, professional outfits can feel wierd at first, but I'm sure you'll get used to it!
                        ->Shopping306
            
            -else:
                    Hm, something's not quite right. Some of your outfit looks a bit on the casual side. You'll need to look as professional as possible for your interview.
                    
                    Are you sure you want to stick with that outfit?
                    
                    +[Yes, I'm sure.]
                    ~well_dressed = false
                    
                    Okay, up to you!
                    ->Shopping306
                    
                    +[Let me pick out something else.]
                    ~renMakingPlayerPutSomethingBack = true
                    Good idea. You'll probably have to put something back first though.
                    ->CheckShoppingCart
        }

//FOR POLISH: Have the game reference which top she's bringing based on what the player picked out.
===Shopping306===
{askedAboutClothingFit == false:
+[Do these clothes fit me well?]
~askedAboutClothingFit = true
Hmm, you know what? That top might be a little baggy. Let me go get you another one, but in your size.

<i>Ren leaves, then comes back with a moment later with a replacement. You try it on, and it fits. Ren says:</i>

Much better! Good thing you asked me that, {player_name}. Scott once told me that whenever he goes shopping he asks Tilly if his clothes fit. He calls it having a "sighted mirror." I always kinda liked that saying.
->Shopping306
}

+[On second thought, I want to get something else.]
~renMakingPlayerPutSomethingBack = true
Okay, up to you! You'll probably have to put something back first, though.
->CheckShoppingCart

+[Let's go.]
{
    -not askedAboutClothingFit:
        Oh, wait. Your top is a bit baggy.
        
        <i>Ren leaves, then comes back with a moment later with a replacement. You try it on, and it fits. Ren says:</i>
    
        Much better! Scott once told me that whenever he goes shopping he asks Tilly if his clothes fit. He calls it having a "sighted mirror." I always kinda liked that saying.
}

Alright, ready when you are!

**[(CONTINUE)]
->Shopping307

===Shopping307===
<i>You and Ren head over to the cashier, who rings up your purchase.</i>

*[(CONTINUE)]
->RenAndKai301

===RenAndKai301===
<i>You and Ren head into the park and find a bench. It feels good to rest your legs. Ren sighs as she sits down.</i>

Whew, a day of shopping come and gone! Thanks for letting me tag along {player_name}. {ren_theater: After our trip to the theater, I was excited to get a chance to hang out with you again.}

*[I like spending time with you too!]
<i>Ren's voice glows.</i>

I'm glad. It's good to have a new friend in town.

We could hang out for a bit longer, I don't have anywhere else I need to be. Well, I did promise myself I'd work on my novel today.
->RenAndKai302

*[No problem.]
We could hang out for a bit longer, I don't have anywhere else I need to be. Well, I did promise myself I'd work on my novel today.
->RenAndKai302

*[What are you going to do next?]
Me? Oh, I dunno. We could hang out for a bit longer, I don't have anywhere else I need to be. Well, I did promise myself I'd work on my novel today.
->RenAndKai302

===RenAndKai302===
<i>Ren shifts in her seat.</i>

Yeah, doing some writing when I get home would be good, I guess.

*[Yeah, you got this!]
<i>Ren smiles.</i>

Thanks {player_name}. It's just that sometimes I wonder if it's even worth it.
->RenAndKai303

*[You don't sound too happy about it.]
<i>Ren sighs.</i>

Yeah. I mean, I like writing. It's just that sometimes I wonder if it's even worth it.
->RenAndKai303

*[It's up to you.]
Yeah, I know. I just wish I knew if it was even worth it.
->RenAndKai303

===RenAndKai303===
I mean, am I really going to go anywhere with my writing? Honestly it's just a hobby.

*[I believe in you.]
    That's really sweet of you to say {player_name}.
    ->RenAndKai304

*[You'll never know if you don't try.]
    True.
    ->RenAndKai304

*[There's nothing wrong with a hobby.]
    You're right, there isn't.
    ->RenAndKai304

===RenAndKai304===
I guess, it's just that I always used to dream of being an author when I was younger, but now I just don't know. I'm not sure if I should try to take that leap.

*[(CONTINUE)]
->RenAndKai305

===RenAndKai305===
It's not like I have anything published, or a lot of people who've seen my work. I'm not like—.

<i>Ren stops, turning her head.</i>

Kai! Fancy seeing you here.

*[(CONTINUE)]
    <i>Kai hops off his skateboard, voice full of energy.</i>
    
    //Should probably make sure Kai's voice is consistent.
    Hey peeps, what's good? Just got back from my chat with Carl. His party is gonna be dope!
    
    <i>Ren seems happy to see him.</i>
    
    That's great! Oh-my-gosh, I'm so happy for you! How's the set coming?
    
    <i>Kai replies:</i>
    
    Oh, pretty good, pretty good. Just have to, you know, perfect it a little bit.
    
    **[(CONTINUE)]
        <i>Just then, you hear a group of other kids approach. A voice calls out:</i>
        
        Kai, my man! Can't wait to see you spin at Carl's party!
        
        <i>Another voice chimes in.</i>
        
        Yeah, do the record scratch thing!
        
        <i>Everyone laughs, including Kai. He says:</i>
        
        Sure man, sure!
        
        ***[(CONTINUE)]
            <i>As the kids walk away, one of them calls out:</i>
            
            You're gonna be great Kai! Your stuff is really good!
            
            <i>Once they leave, Ren says to Kai:</i>
            
            Wow, you already have fans! I'm kind of jealous.
            
            ****[They must really like your work.]
                <i>Kai says:</i>
                
                Huh? Oh, yeah, I guess so. It's kinda "whatever," you know?
                ->RenAndKai306
            
            ****[Are you a celebrity or something?]
                <i>Kai says:</i>
                
                Huh? Oh, I dunno, I guess so. It's kinda "whatever," you know?
                ->RenAndKai306
            
            ****[I wish I was that popular.]
                <i>Kai says:</i>
                
                Huh? Oh, yeah. Well, it's kinda "whatever," you know?
                ->RenAndKai306
                
===RenAndKai306===
<i>Ren is shocked.</i>

"Kinda whatever"? Kai, I would kill to have a fanbase like that for my writing. That's a big deal!

<i>Nonchalant, Kai replies:</i>

It's only a few people from school. I mean, I'm glad they like my stuff. It's just, like, I'm more in it for me, you know? I want to be as good as the pros someday.

So if I'm popular, that's great, but it's not really the end goal.

*[Don't take it for granted.]
    Yeah, I don't. I mean I shouldn't. It is really cool to have people who like my stuff.
    ->RenAndKai307

*[Yeah, your craft is more important.]
    Exactly. Fans are cool, but the skills? Those are priceless.
    ->RenAndKai307

*[It's up to you.]
    Word. This is just how I roll.
    ->RenAndKai307
    
===RenAndKai307===
<i>You hear Ren take a deep, solemn breath.</i>

Well, I think it's great that you have fans.

<i>Kai says:</i>

Hey, you've got fans, too. You're still getting mail from those "Literary Frontiers" people, right?

<i>Ren replies:</i>

Uh, yep. Still am. Just won't leave me alone.

*[Why do you seem so down all of a sudden?]
    Oh, I dunno. I guess I just don't like thinking about the program to be honest.
    ->RenAndKai308

*[What's "Literary Frontiers" anyway?]
    ->RenAndKai308

*[Will someone please tell me what that is?]
    ->RenAndKai308

===RenAndKai308===
It's this study abroad program in Europe. Well, London specifically. Basically, you go to a university in London for three months and study European literature.

<i>Kai chimes in.</i>

They also take you on field trips, right? You told me that you'd get to visit Rome and check out the homes of historical Italian writers and stuff. Honestly it's totally your thing.

<i>Ren sounds nonplussed.</i>

Yeah. Totally.

*[(CONTINUE)]

    <i>Kai says:</i>
    
    Yeah, it's too bad they didn't take you this summer. Ah, well, maybe you could try again for next year. You're good enough, for sure.
    
    <i>Ren smiles a little.</i>
    
    Thanks, Kai. But, um, well. I sort of, uh.
    
    **[Are you okay?]
        ->RenAndKai309
    
    **["You sort of" what?]
        ->RenAndKai309
    
===RenAndKai309===
I got accepted this year. And I turned it down.

*[(CONTINUE)]

    <i>Kai is speechless for a second, then says:</i>
    
    Wait, you got in? But you told me that you didn't!
    
    <i>Ren's voice gets a little shaky.</i>
    
    Yeah, yeah, I know. I just. I didn't know how to explain it.
    
    **[(CONTINUE)]
        <i>Kai says:</i>
        
        So, you could've been in Europe this summer? Like, right now?
    
        <i>Ren sniffs a little.</i>
        
        Yeah, look, I don't feel great about it either okay? It's just, I didn't think I was up to it.
        
        I mean, maybe I'm not ready to go that far away from home.
        
        ***[Just take a leap of faith.]
            That's what my mom keeps telling me, but I don't know.
            ->RenAndKai310
        
        ***[Why do you think you're not ready?]
            I guess I've just had some time to think about it, is all.
            ->RenAndKai310
        
        ***[Only go if you want to.]
            Yeah. I dunno. I guess a part of me wants to, but I feel like I'd be making a mistake.
            ->RenAndKai310

===RenAndKai310===
What if I get there and then realize I hate it? Or if I don't make any friends? I'd be stuck there for three months.
            
I just don't think it's a good idea.

*[But I made friends when I came here.]
    Yeah. That's true. I guess you have some experience with this sort of thing. But maybe I wouldn't have been as lucky as you.
    
    Err, not that I'm trying to brag about myself or anything. It would be pretty weird of me to say that I'm "the perfect friend."
    ->RenAndKai311

*[If you'd gone to Europe, I'd never have met you.]
    Yeah, see? That's what I'm talking about. I feel like I have no idea what will happen if I go. 
    
    What will I miss out on? Who will be here when I'm not?
    ->RenAndKai311
    
*[It's your choice.]
    Right. I have to decide for myself.
    
    <i>Ren is quiet for a second, as if reflecting on this. Then she says:</i>
    ->RenAndKai311
    
===RenAndKai311===
Anyway, uh, sorry for making you listen to me ramble on about this. I know I can really go on sometimes.

*[That's what friends are for.]
    <i>Ren smiles.</i>
    
    Thanks {player_name}. I know we only met a few days ago, but you're a really good friend. You too Kai, as I've undoubtedly told you a billion times.
    
    <i>Kai laughs.</i>
    
    Right back atcha.
    ->RenAndKai312

*[No problem.]
    Thanks. I mean, wow, you guys are great listeners.
    
    <i>Kai laughs.</i>
    
    Anytime.
    ->RenAndKai312


*[Yeah, you can.]
    <i>Ren laughs.</i>
    
    Yeah, guess so. What can I say? I've got a head full of words.
    ->RenAndKai312

    
===RenAndKai312===
<i>Ren stretches and stands up.</i>

Anyway, I think I'm about ready to head home. Who wants to walk with me?

<i>Kai says:</i>

I should probably get home to work on my set, but I'm sure I'll catch you later.

*[(CONTINUE)]
->RenAndKai313

===RenAndKai313===
<i>Ren says:</i>

No worries! Guess it's just you and me {player_name}. Wait, it sounds like I'm getting a call from somebody.

<i>She pauses, presumably to look down at her phone. Her voice gets a bit more serious.</i>

Oh, uh, yeah. I should probably take this. Just give me a sec.

*[(CONTINUE)]
->RenAndKai314

===RenAndKai314===
<i>As Ren steps away to take her call, Kai leans over and whispers to you:</i>

I dunno, this is weird. Just a month ago the Literary Frontiers program was all she would talk about. What's going on?

*[She'll tell us when she's ready.]
    Yeah, you're right. We shouldn't snoop.
    ->RenAndKai315

*[I'm not sure.]
    Yeah. Well, I don't know. Maybe she'll work it out herself, whatever it is.
    ->RenAndKai315

*[She seems fine to me.]
    Trust me, I've known her for a while. This isn't normal for her.
    ->RenAndKai315

===RenAndKai315===
Well anyway, I should probably run. I've got a lot of work to do on this set.

But hey, if you ever want to hear what I'm working on, we should hang out at my house sometime. I'd love to show you my stuff!

*[Totally!]
    ->RenAndKai316

*[Maybe I'll do that.]
    ->RenAndKai316

===RenAndKai316===
<i>Kai hops on his board and skates away, shouting a quick goodbye to Ren.</i>

<i>Afterward, Ren walks you home.</i>
->Dinner301

===Dinner301===
<i>As you step through your front door, the rich smell of tomato sauce reaches your nostrils. Uncle Scott calls out:</i>

Welcome back {player_name}, you're just in time for dinner!

*[(CONTINUE)]
    //Give player option to have something else?
    <i>After a quick trip to the bathroom to wash your hands, you sit down at the dinner table. Aunt Tilly speaks as Scott hands out bowls of piping hot pasta with red sauce:</i>
    
    Mmm, Scott, you're going to spoil me!
    
    <i>Warmly, Scott replies:</i>
    
    Don't mind if I do, sweetheart.
    
    //Revist these dialogue choices
    **[So, what's in the sauce?]
        Tomatoes, basil, garlic, and a whole lot of love.
        ->Dinner302
    
    **[Ahem!]
        <i>Scott laughs.</i>
        
        Alright, alright. I can see we're scaring poor {player_name}, here.
        ->Dinner302
    
    **[Are you two having a moment?]
        <i>Scott laughs.</i>
        
        Alright, alright. I can see we're scaring poor {player_name}, here.
        ->Dinner302

===Dinner302===
<i>As you begin eating, Aunt Tilly asks:</i>

So, how was shopping {player_name}?

*[Pretty good.]
->Dinner303
    
*[It was alright.]
->Dinner303

===Dinner303===
Good! I hope you picked out something nice.

<i>Uncle Scott says:</i>

So, only a couple days until the interview, right? You'd better get on with the rest of your interview preparation. There's a lot else you need to do.

*[Like practice interview questions.]
    Yes. That'll help you build confidence.
    ->Dinner304

*[Like read over the job description again.]
    Right, that's important.
    ->Dinner304

*[I'm not sure what to do.]
    Don't worry, you've still got a few days to get ready.
    ->Dinner304
    
===Dinner304===
Confidence is key. That's why one of the best things you can do right now is practice for common interview questions.

<i>Tilly chimes in:</i>

Definitely. When I was younger, my dad would quiz me with flashcards.

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    //Good idea to "spoil" these questions in advance?
    Right on. These days, you can probably find common interview questions online. Things like, "Tell me about yourself," and "What are your greatest weaknesses?"
    ->Dinner305
        
===Dinner305===
You should find your own way to practice {player_name}. It'll help you sound more relaxed, more natural. That goes a long way in any interview.

*[Okay, got it.]
    You'll be great, I know it.
    ->Dinner306

*[I'll try, I guess.]
    Don't worry, you'll get the hang of it.
    ->Dinner306

===Dinner306===
<i>Uncle Scott pauses to take a sip of water.</i>

Oh, and there's another thing. This is pretty important.

*[What is it?]
    ->Dinner307

*[Wait, there's more?]
    <i>Scott smiles.</i>
    
    Yup, 'fraid so.
    ->Dinner307

//Add more legal details here?
//What should the player do?
//Good idea to run  this section by the team, see what they have to say.
===Dinner307===
You should know that an employer isn't allowed to ask you if you're blind. It's against the law. Some interviewers don't know this, so it may come up.

Still, sighted interviewers will probably be able to tell that you're blind without asking. They might wonder if you're up to the job.

So it's up to you to prove that your blindness isn't a hindrance.

*[How do I do that?]
    There are a couple of ways.
    ->Dinner308

*[That doesn't seem fair.]
    <i>Uncle Scott sighs.</i>
    
    Yeah, it isn't. Still, it's one of those things you might encounter as you're looking for work.
    ->Dinner308

//Prob revisit this
===Dinner308===
Tell you what, I'll give you some more specific tips for this later. That way we're not overwhelming you with all of this info at once.

*[Sounds good.]
->Dinner309

===Dinner309===
//REVISIT THE ADVICE HERE BASED ON FEEDBACK
<i>Aunt Tilly chimes in and says:</i>

Oh but dear, what about the accommodations question?

<i>Uncle Scott replies:</i>

Yep, we should discuss that now. {player_name}, during the interview they may ask you if you need any accommodations. Basically that just means they want to know if there's anything they need to in order to help you do the job as a blind person.

When they ask that, just be honest and tell them everything you'll need. No sense surprising them with anything later; that won't go over well.

//Pad out these dialogue choices?
*[Okay.]
->Dinner310

===Dinner310===
<i>You hear a creak as Uncle Scott leans back in his chair.</i>

Anyway, that's about all I've got in the way of advice:

Reread the job description, practice answering common interview questions, show the interviewer that your blindness isn't a hindrance, and be ready to talk about accommodations.

*[Sounds good.]
    <i>Uncle Scott smiles.</i>
    
    You'll get the hang of it, {player_name}. It just takes a bit of practice.
    ->Dinner311

*[That's a lot of things.]
    <i>Aunt Tilly chuckles.</i>
    
    It certainly is.
    
    <i>Uncle Scott smiles and says:</i>
    
    It just takes a bit of practice, {player_name}. Don't worry, you'll get it.
    ->Dinner311
    
===Dinner311===
Which brings me to my final point. Practice, practice, practice!

<i>Aunt Tilly chimes in.</i>

But first, why don't you both "practice" bringing the dishes to the sink for me? These bowls aren't going to wash themselves!

*[Dinner was delicious!]
    Indeed! Well done, dear.
    
    <i>Beaming, Uncle Scott says:</i>
    
    I certainly try.
    
    **[(CONTINUE)]
        ->Preparation301

*[Sure, I'll help.]
    Thank you {player_name}, I appreciate it.
    
    **[(CONTINUE)]
        ->Preparation301

*[Alright, fine.]
    <i>With a wry smile, Aunt Tilly says:</i>
    
    Don't worry, it won't take you but a minute.
    
    **[(CONTINUE)]
        ->Preparation301
        
===Preparation301===
<i>You help your aunt and uncle clean the dining room.</i>

//Is "entry-level" the best word here?
<i>When you get out of bed the next day, you think about what Scott said about practicing. First, you reread the position again. Then, you look up a list of common interview questions for entry-level job interviews and come up with answers.</i>

<i>You wonder what you should do next.</i>
->Preparation302

===Preparation302===
*[(Call your friends and ask for interview advice)]
    <i>You reach out to Ren and Kai. They give you great advice about things that have helped them in interviews before.</i>
    
    <i>You wonder what else you should do to prepare.</i>
    ->Preparation302

*[(Ask Uncle Scott to do a mock interview with you)]
    <i>Your uncle is happy to help. You sit in the dining room, and he asks you questions as though he's an interviewer. Once you're done answering, he gives you feedback and suggestions about your answers.</i>
    
    <i>You wonder what else you should do to prepare.</i>
    ->Preparation302

*[(Record your answers and play them back)]
    <i>You say your interview answers aloud and record them with your phone. When you play them back, you're able to learn a lot about your delivery, and how your answers sound.</i>
    
    <i>You wonder what else you should do to prepare.</i>
    ->Preparation302

*[(Wait for the day of the interview)]
    <i>You wait as the day of the interview gets closer.</i>
    ->Preparation303

===Preparation303===
<i>The day before the interview, Uncle Scott knocks on your door.</i>

//MAybe we should revisit the way we handle commas.
Hey {player_name}, I have a little gift for you.

*[What's the occasion?]
Your interview tomorrow.
->Preparation304

*[Is it a fun gift?]
More like a helpful one.
->Preparation304

*[How expensive is it?]
<i>Uncle Scott laughs.</i>

Don't get your hopes up.
->Preparation304

===Preparation304===
<i>Uncle Scott opens the door and steps inside. He hands you a small, flat, rectangular piece of plastic. In the center is a rectangular hole.</i>

*[What is this?]
->Preparation305

//Good use of "seen"?
*[I think I've seen these before.]
Yeah, you might have.
->Preparation305

*[That's it?]
It may not seem like much, but that little piece of plastic can come in handy during an interview.
->Preparation305

===Preparation305===
//Bleck
It's a signature guide. If someone at the interview asks you to sign something, you can use it to make sure your signature doesn't go outside of the signature box. Just ask someone to line up the hole with the line on the page where your signature is supposed to go and sign away.

Using this in front of a sighted person can show them that you can take care of yourself. It's a good way to demonstrate that you'd be a capable, resourceful employee.

*[Thanks!]
Sure thing. ->Preparation306

*[Good to know.]
Right. ->Preparation306

===Preparation306===
Speaking of showing that you're capable, do you have a notetaker by any chance?

*[Yeah, I have a braille one.]
~physical_notetaker = true

Perfect.
->Preparation307

*[I have a speaking one.]
~physical_notetaker = true

Great.
->Preparation307

*[I just use an app on my phone.]
~physical_notetaker = false

That works.
->Preparation307

//How many notetakers would a person own?
//Also, when does Scott show the player how to use it?
*[I don't have a notetaker.]
~physical_notetaker = true

No problem. Here, you can have one of mine. I'll show you how to use it later.

<i>Uncle Scott hands you a rectangular device about the size of a large book into your hands.</i>
->Preparation307

===Preparation307===
Make sure to use it to take notes during the interview. Not only will it help you remember important things the interviewer says to you, it will also show the interviewer that being blind doesn't stop you from taking good notes.

*[So it shows them that I'm capable.]
    Exactly.
    ->Preparation308
    
*[Will this really help?]
    Doing this doesn't guarantee that you'll get the job, but it might help.
    ->Preparation308

*[Anything else?]
    There is one other thing.
    ->Preparation308

===Preparation308===
When you go to print out your résumé, references, and whatever other documents you want to bring with you, try doing something like this.

<i>Uncle Scott hands you two separate pieces of paper. Feeling around, you notice that each one has a staple in the upper left-hand corner.</i>

*[What are these?]
->Preparation309

*[I've done something like this before.]
Good, it's a handy little trick.
->Preparation309

//BUT WHAT IF THE PLAYER ONLY HAS THEIR REFERENCES LIST?
===Preparation309===
The one with the horizontal staple is my résumé. The one with the vertical staple is my references list.

Get it? The staple helps me tell which is which. That way, when the interviewer asks for my résumé, I'll know I'm handing them the right document.

Just another trick to help show that your blindness won't hold you back.

//Is the conspicuous thing a big deal?
*[That's clever.]
Yep. Feel free to use whatever you like. Staples, paperclips, basically anything that isn't too conspicuous.
->Preparation310

//Clarify what you mean by "memorize"?
*[Can't I just memorize which is which?]
You can, but using staples, or paperclips, or something else is safer in my opinion.
->Preparation310

===Preparation310===
Anyway, I don't want to overwhelm you with any more info, so we'll just leave it there.

I'll be at work early tomorrow, so if I don't see you before you head off to the interview, good luck. I've seen you preparing for the last couple of days, so I'm sure you'll do well.

*[Thanks for all of your advice Uncle Scott.]
Anytime {player_name}.
->Preparations311

*[I hope so.]
Have faith in yourself {player_name}. You can do this.
->Preparations311

===Preparations311===
Oh, and remember to head to bed early! You'll want to be as rested as possible for tomorrow. And eat a good breakfast, that's really important, too.

*[I'll try my best.]
->Preparations312

*[That's a lot of things to remember.]
->Preparations312

*[Don't overwhelm me!]
->Preparations312

===Preparations312===
<i>Uncle Scott laughs.</i>

Yeah, I know that's a lot. You'll get the hang of it, trust me.

Good luck {player_name}. And let us know how it goes tomorrow.
->MorningBefore301

===MorningBefore301===
<i>You head to bed that night wondering how it's going to go.</i>

<i>The next morning, your alarm rings. Today's the day.</i>

*[(Get ready)]

    <i>You leap out of bed, shower, and get dressed in the new interview clothes you bought.</i>
    
    <i>Once you're downstairs, Aunt Tilly prepares you a nutritious, filling breakfast. She says:</i>
    
    Don't think I'm going to let you go hungry on your big day!
    
    **[(CONTINUE)]
    
        <i>You finish your breakfast. There isn't much time before you have to leave.</i>
        
        <i>You start packing up your things.</i>
        ->MorningBefore302

//ALERT: Where did the player get a references list???
//Also, is this too many dialogue options for one choice?
===MorningBefore302===
{
    -hasResume:
    
        *[(Pack your résumé and references list)]
            ~items_packed++
        
            <i>Taking Uncle Scott's advice, you put staples in different orientations in the corners of both papers to help you tell the difference between them.</i>
            
            <i>You wonder what else to bring.</i>
            ->MorningBefore302
            
    -else:
    
        //Would the player really need a staple for just one page?
        *[(Pack your references list)]
            ~items_packed++
        
            <i>Taking Uncle Scott's advice, you put a staple on the corner of the page to help you tell your reference list apart from any other papers in your bag.</i>

            <i>You wonder what else to bring.</i>
            ->MorningBefore302
}

{
    -physical_notetaker: 
        
        *[(Pack your phone and notetaker)]
            ~items_packed++
            
            <i>You pack both devices.</i>
            
            <i>You wonder what else to bring.</i>
            ->MorningBefore302
            
    -else:
    
        *[(Pack your phone)]
            ~items_packed++
        
            <i>You slip your phone into your pocket.</i>
            
            <i>You wonder what else to bring.</i>
            ->MorningBefore302
}

*[(Pack the signature guide)]
    ~items_packed++

    <i>You slip the signature guide into your bag.</i>
    
    <i>You wonder what else to bring.</i>
    ->MorningBefore302
    
*[(Pack your wallet)]
    ~items_packed++

    <i>You slip your wallet, which has your ID and some cash, into your pocket. Never know if you might need it.</i>

    <i>You wonder what else to bring.</i>
    ->MorningBefore302
    
+[(Head out the door)]
{
    -items_packed == 4:
        <i>Aunt Tilly says:</i>
        
        Alright, ready to go?
        ->MorningBefore303
        
    -else:
        <i>Aunt Tilly says:</i>
        
        Hmm, are you sure that's everything you need?
        ->MorningBefore302
}

//Do we want the player to always succeed this, or should this choice give them consequences?
//Also, this choice is pretty obvious.
===MorningBefore303===
*[Do I have any stains on my outfit?]
    ~checked_for_stains = true

    Ah, good of you to ask! It looks like you have a small stain on your top. Probably from breakfast I bet. It should be easy to get out with a wet paper towel.
    
    <i>Aunt Tilly heads inside, then comes back out and dabs your top with a wet paper towel.</i>
    
    There, good as new.
    ->MorningBefore303

*[I'm ready.]
    Then let's get going!
    
    <i>You and Aunt Tilly hop into her truck and make your way downtown.</i>
    ->WaitingRoom301
    
===WaitingRoom301===
<i>You pull up in front of the {current_interview_employer}. Aunt Tilly says:</i>

Okay, {player_name}, this is your stop. Good luck, and call me when you're done!

*[Sound good.]
->WaitingRoom302

===WaitingRoom302===
<i>You hop out, and Aunt Tilly drives off. It's just you and the {current_interview_employer}.</i>

*[(Go inside)]
->WaitingRoom303

//Alter the text if the player hasn't visited some of these places?
//WAIT how did the player navigate to the reception desk the first time, then?
===WaitingRoom303===
<i>You step inside the {current_interview_employer}.</i>

{
    -current_interview_employer == "hotel":
    
    <i>The space feels about the same as it did last time you were here with Ren and Kai. You remember about how Ren told you that the room had a high ceiling and was made of wood and stone. Unfortunately, you don't remember how to reach the front desk.</i>
}

<i>You realize that you're going to have to find your way to the front desk somehow.</i>

//May want some feedback on these options.
*[(Walk until you come to a desk)]
    {
        -current_interview_employer == "hotel":
            <i>Sweeping the area ahead with your cane, you eventually reach a desk. A voice says:</i>
            ->WaitingRoom304Hotel
    }

*[(Ask for help)]
    {
        -current_interview_employer == "hotel":
            <i>You ask aloud if anyone knows where the receptionist is. You hear someone call out to you:</i>
            
            Oh, that would be me. The desk is 30 feet in front of you.
            
            **[(Approach the reception desk)]
                <i>You approach the reception desk. Once you arrive, a voice says:</i>
                ->WaitingRoom304Hotel
    }

*[(Stand there until someone helps you)]
    {
        -current_interview_employer == "hotel":
        
            <i>You stand there, waiting for someone to assist you. After a long minute of silence, someone calls out to you:</i>
            
            Uh, excuse me, may we help you?
            
            **[I'm looking for the reception desk.]
                I'm the receptionist. The desk is about 30 feet in front of you.
                
                ***[(Approach the reception desk)]
                    <i>You approach the reception desk. Once you arrive, a voice says:</i>
                    ->WaitingRoom304Hotel
            
            **[I need some help.]
                No problem. Just come to the reception desk. It's about 30 feet in front of you.
                
                ***[(Approach the reception desk)]
                    <i>You approach the reception desk. Once you arrive, a voice says:</i>
                    ->WaitingRoom304Hotel
    }

===WaitingRoom304Hotel===
Welcome to the Lilymist Hotel. How may I help you?
->WaitingRoom305Hotel

//Add a "negative" choice of some kind?
===WaitingRoom305Hotel===
{knows_where_reception_desk_is == false:
    *[Is this the reception desk?]
        Why yes, it is. What can I do for you?
        
        ~knows_where_reception_desk_is = true
        
        ->WaitingRoom305Hotel
}

*[I'm here for an interview.]
    ->WaitingRoom306Hotel

*[I'd like to speak to the hiring manager.]
    Very well. Is he expecting you?
    ->WaitingRoom305Hotel

===WaitingRoom306Hotel===
Ah. Are you {player_name}? Gordon should be ready for you very soon. I'll just need you to sign your name here.

<i>The receptionist slides a clipboard across the desk to you.</i>

//But how impressed would someone REALLY be by this?
*[(Use your signature guide)]
    <i>With some help from the receptionist, you line up your signature guide with the line on the page and sign your name.</i>
    
    Thank you. Have a seat, Gordon will be with you shortly.
    
    **[Where would you like me to sit?]
        Oh, sorry about that.
        ->WaitingRoom307Hotel
    
    **[I can't see where the seats are.]
        Oh, sorry about that.
        ->WaitingRoom307Hotel
    
    //Prob want to revise this one's choice text
    //Should this choice have any negative consequences?
    **[I'm blind, okay?]
        Oh, I, of course. I apologize.
        ->WaitingRoom307Hotel
    
===WaitingRoom307Hotel===
If you walk about 15 feet behind you, turn right, and walk another 15 feet, that's where our seating area is.

*[(Sit down)]
->WaitingRoom308Hotel

===WaitingRoom308Hotel===
<i>You find a seat next to a few other people and wait. You get the sense that it might be a while before the hiring manager comes out to see you.</i>

<i>You wonder what you can do to pass the time.</i>
->WaitingRoom309Hotel

===WaitingRoom309Hotel===
{
    -turns_spent_waiting < 2:
        *[(Play a video game without earbuds)]
            ~turns_spent_waiting++
            
            <i>You take out your phone, pick one of your favorite games, and start playing.</i>
            
            <i>After a minute or two, you hear the people sitting next to you start to grumble and clear their throats. The receptionist calls out to you and says:</i>
            
            Excuse me, could you turn that down, please?
            
            <i>You do so, and continue waiting.</i>
            
            **[(CONTINUE)]
                ->WaitingRoom309Hotel
            
        *[(Text your friends)]
            ~turns_spent_waiting++

            <i>You take out your phone and text your friends about how you're about to go into the interview.</i>
            
            <i>Ren texts back to say that you've got this. Kai says that you're going to, in his words, "absolutely wreck this interview."</i>
            
            <i>You put your phone aside, and continue waiting.</i>
            
            **[(CONTINUE)]
                ->WaitingRoom309Hotel
        
        *[(Listen to a song with your earbuds)]
            ~turns_spent_waiting++

            <i>You put in your earbuds, find a playlist you like, and relax.</i>
            
            {
                -turns_spent_waiting >= 2:
                    <i>You're in the middle of the song when you feel someone tap you on the shoulder. You take out your earbuds and hear the receptionist's voice next to you.</i>
                    
                    Excuse me? You didn't hear me the first time, but Gordon is ready for you now.
                    
                    **[(CONTINUE)]
                        ->WaitingRoom310Hotel
                
                -else:
                    <i>A few minutes later the song ends. You continue waiting.</i>
            
                    **[(CONTINUE)]
                        ->WaitingRoom309Hotel
            }
            
        *[(Check to make sure you have everything)]
            ~turns_spent_waiting++

            <i>You go through your bag and pockets. Sure enough, you've packed everything that you think you'll need.</i>
            
            <i>Feeling relieved, you continue waiting.</i>
            
            **[(CONTINUE)]
                ->WaitingRoom309Hotel
            
    -else:
        <i>A moment later, you hear the receptionist call out to you.</i>
        
        {player_name}, Gordon is ready for you.
        **[(CONTINUE)]
            ->WaitingRoom310Hotel
}

//"Everything is part of the interview."
//Add bit about extending your hand to shake?
===WaitingRoom310Hotel===
<i>You walk over to the receptionist's desk. The receptionist asks:</i>

I'll show you to Gordon's office. Are you ready?

*[Yep!]
    Excellent. Come with me.
    ->Interview301Hotel
    
*[Just let me silence my phone.]
    ~cellphone_silenced = true
    
    Good idea.
    
    <i>You take out your phone and set it to "silent."</i>
    ->Interview301Hotel

*[I think so.]
    Excellent. Come with me.
    ->Interview301Hotel

*[I'm a little nervous.]
    Don't worry, everyone feels that way.
    ->Interview301Hotel


===Interview301Hotel===
<i>The receptionist leads you to a room towards the back of the hotel. As you enter you hear an upbeat, hearty voice speak to you.</i>

Hey there {player_name}! I'm Gordon, the hiring manager here at the Lilymist Hotel. We spoke on the phone a few days ago.

*[Hey! What's up?]
    <i>Gordon seems off-put by your tone.</i>
    
    Uh, I'm good, thank you.
    ->Interview302Hotel

*[It's good to meet you.]
    Likewise. Thanks for coming in.
    ->Interview302Hotel

*[Okay, whatever.]
    <i>Gordon seems off-put by your tone.</i>

    Uh, alright.
    ->Interview302Hotel

//This sequence is a bit on-the-nose, but I thought it'd be good to give players some feedback about how their clothing choices went overall
===Interview302Hotel===
{
    -well_dressed == true:
        Anyway, it's good to see that you're well-dressed. Maintaining a professional appearance is an important part of working here at the Lilymist Hotel.

        {
            -checked_for_stains == true:
                Also, it's good to see that your outfit is clean stain-free. Believe it or not, we had a problem with an employee wearing messy clothes in the past.
                
                *[Sounds good.]
                    ->Interview303Hotel
                *[Okay.]
                    ->Interview303Hotel

            -checked_for_stains == false:
                Although it looks like there's a stain on your top. Remember to check for those next time.
                
                *[Sorry about that.]
                    No problem, just be careful in the future,
                    ->Interview303Hotel
                *[Okay.]
                    ->Interview303Hotel

        }
    
    -well_dressed == false:
        Anyway, I have to mention that your outfit doesn't quite meet the standard we set for our employees. If we hire you, you'll have to make sure to dress in a more professional manner.
        
        {
            -checked_for_stains == true:
                That being said, it's good to see that your outfit is clean stain-free. Believe it or not, we had a problem with an employee wearing messy clothes in the past.
                
                *[Sorry about that.]
                    No problem, just be careful in the future,
                    ->Interview303Hotel
                *[Okay.]
                    ->Interview303Hotel

            
            -checked_for_stains == false:
                Also, it looks like there's a stain on your top. Remember to check for those next time.
                
                *[Sorry about that.]
                    No problem, just be careful in the future,
                    ->Interview303Hotel
                *[Okay.]
                    ->Interview303Hotel

        }
}

===Interview303Hotel===
Please, have a seat.

<i>Gordon hesitates for a second, then says:</i>

//Do we want to leave this in?
Oh, um, there's a chair about two feet in front of you. Sorry about that, I just noticed your cane there.

*[(Take a seat)]
->Interview304Hotel

//May want to cut the bit about references, or documents of any kind, because they're kind of just a weird extra addition that the game never properly deals with?
//ALSO, the player has no way to "fail" this moment.
===Interview304Hotel===
<i>You sit down, and hear Gordon adjust himself in his chair. He says:</i>

{
    -hasResume == true:
        Okay {player_name}, let's see. I know you submitted a résumé to us. Do you have it with you? Also, do you have any references to show me?
        
        *[(Take out your documents)]
            <i>You reach into your bag and take out your résumé and references list, identifying each document with the staples on the corners. Gordon says:</i>
            ->Interview305Hotel
        
    -hasResume == false:
        Okay {player_name}, let's see. Do you have any references to show me?
        
        *[(Take out your references list)]
            <i>You reach into your bag and take out your references list, identifying it with the staple you put on the corner. Gordon says:</i>
            ->Interview305Hotel
}

//A "remember to do this" choice, maybe kind of phoned in
===Interview305Hotel===
Ah, good to see that you're organized.

So, are you ready to begin?

*[All set.]
    Then let's get started.
    
    **[(CONTINUE)]
    ->Interview306Hotel

*[Do you mind if I use my notetaker?]
    Oh, of course.
    
    <i>You take out your notetaking device. Gordon sounds impressed.</i>
    
    Ah, that looks like a handy little tool there.
    
    Anyway, let's get started
    
    **[(CONTINUE)]
    ->Interview306Hotel

//Consider shuffling some of the previous answers, to make it harder to tell which ones are "correct"
//Consider giving players a "second chance" at this by having Gordon say, "Uh, what I actually meant was..." if they pick something incorrect
===Interview306Hotel===
Alright {player_name}, why don't you tell me a little bit about yourself?

<i>You think carefully about how you should answer.</i>

*[(Describe your upbringing)]
    <i>Gordon listens, but seems a bit confused. When you finish, he says:</i>

    Uh, okay.
    ->Interview307Hotel

//Would this necessarily be a "bad answer"?
*[(Talk about your hobbies and interests)]
    <i>Gordon listens, but he seems a little uncertain. He says:</i>
    
    Hm, okay, okay.
    ->Interview307Hotel


*[(Describe activities you do, and skills that you have)]
    <i>Gordon listens. When you finish, he sounds pleased.</i>
    
    Great, that's good to know.
    ->Interview307Hotel

*[(Say that you're a highschool student living with your aunt and uncle)]
    <i>Gordon listens, but seems a bit confused. When you finish, he says:</i>

    Uh, okay.
    ->Interview307Hotel

===Interview307Hotel===
Now, why do you think you'd be a good fit for the Pool Receptionist position?

*[(Say you don't know)]
    <i>Gordon sounds nonplussed.</i>
    
    Uh, alright then.
    
    **[(CONTINUE)]
    ->Interview308Hotel

//Would people really expect "enthusiasm" here?
*[(Mention your enthusiasm and work ethic)]
    <i>You mention how you're enthusiastic about the position, and that you're willing to work hard. Gordon sounds pleased. He says:</i>
    
    Good, that's good.
    
    **[(CONTINUE)]
    ->Interview308Hotel


*[(Describe all of your accomplishments)]
    <i>You begin describing each of your academic and extracurricular accomplishments. After a minute or so, Gordon stops you. He says:</i>
    
    //Sounds a tiny bit rude, maybe?
    Uh, okay. I get it. No need to list everything that's on your résumé.
    
    **[(CONTINUE)]
    ->Interview308Hotel


*[(Describe how your skills and experience match the position)]
    <i>You mention specific examples of how things you've done in the past are similar to the responsibilities of the Pool Receptionist. Gordon sounds pleased. He says:</i>
    
    Good, good. That's what I like to hear.
    
    **[(CONTINUE)]
    ->Interview308Hotel

===Interview308Hotel===
{
    -cellphone_silenced == true:
        <i>As the interview goes on, you suddenly worry that your phone might go off.</i>
        
        <i>Then you relax as you remember that you silenced it before you came in.</i>
        
        *[(CONTINUE)]
        ->Interview309Hotel
    
    -cellphone_silenced == false: 
        <i>Suddenly, you hear your phone vibrate loudly in your pocket. Gordon says:</i>
        
        Uh, you might want to silence that.
        
        *[Uh, sorry.]
        ->Interview308HotelA

        *[I didn't know this would happen.]
        ->Interview308HotelA

        *[Okay.]
        ->Interview308HotelA
}


===Interview308HotelA===
<i>You quickly take out your phone and set it to silent, feeling a little embarrassed.</i>
*[(CONTINUE)]
->Interview309Hotel

//I did this one quickly, so I'd want to revisit it
===Interview309Hotel===
<i>Gordon moves on to his next question. He asks:</i>

So {player_name}, let's assume you're the Pool Receptionist. You're on shift when a guest comes up to you and asks if some of their friends from outside can enter the pool with them.

You know that this isn't allowed under our pool policy. What do you say to them?

//STAR-method "lite"
*[(Describe a time when you were faced with a similar situation)]
    <i>You tell a story about how you dealt with something similar once before, and describe what you did. Gordon pays close attention. When you're finished, he says:</i>
    
    Ah, great. It's good to hear that you were able to learn from that experience.
    ->Interview310Hotel

*[(Say that you'd be nice and let them bring their friends in)]
    <i>Gordon frowns. He says:</i>
    
    We don't like making exceptions to the rules around here.
    ->Interview310Hotel

//Would this technically be a "bad answer"?
*[(Describe how you'd tell them no)]
    <i>You run through what you'd say to the guest. Gordon listens carefully. When you're done, he says:</i>
    
    Good. That gives me some good insight into how you think.
    ->Interview310Hotel

*[(Say you don't know)]
    <i>Gordon seems unenthused. He says:</i>
    
    Well, alright.
    ->Interview310Hotel
    
===Interview310Hotel===
Okay, another question: What are your greatest weaknesses?

<i>The question catches you a little bit off guard. You wonder about how to respond.</i>

*[(Say that you have no weaknesses)]
    <i>You can hear Gordon frown. He says:</i>
    
    Hmm. Everyone has weaknesses. But if you insist, we can move on.
    ->Interview311Hotel

*[(Mention a weakness that you're already working to fix)]
    <i>You explain a weakness of yours, one that isn't too critical to the position. Gordon listens thoughtfully. He says:</i>
    
    Mm, it's good that you're already working on that. And I appreciate your honesty.
    ->Interview311Hotel

*[(Say that you work too hard)]
    <i>Gordon chuckles. He says:</i>
    
    Well, uh, I've heard that one before, but if you insist.
    ->Interview311Hotel

*[(Mention a difficulty related to being blind)]
    <i>After you describe a challenge you've encountered due to your blindness, Gordon responds. He sounds a little uneasy, saying:</i>
    
    Huh, okay. I can see how not having vision would make it harder for you to do your job.
    ->Interview311Hotel
    
===Interview311Hotel===
<i>You hear Gordon lean back in his seat. He says:</i>

Alright then. The last question I have for you is about accommodations. First, though, let me read to you the responsibilities of the Pool Receptionist position one more time.

<i>Gordon reads the job description. When finished, he asks:</i>

So, would you need reasonable accommodation to complete any of those tasks?

*[(Say you wouldn't need any accommodation)]
    Uh, alright. If you say so.
    ->Interview312Hotel

*[(Ask if he's concerned about any tasks in particular)]
    Well, there were a few. 
    
    Specifically, would it be a challenge for you to clean up towels from around the pool area at the end of your shift? 
    
    Also, would you have any difficulties keeping the receptionist kiosk organized?
    
    **[No, not without accommodation.]
        <i>You stress that you can't do those tasks without extra help. Gordon seems a bit concerned. He says:</i>
        
        Hmm, I see. Alright, then.
        ->Interview312Hotel
    
    **[Yes, but here's what I'd need.]
        <i>You reassure Gordon that you're capable of doing those tasks, but that you need some things in order to help you. Gordon seems to understand. He says:</i>
        
        Alright, got it. I think we can arrange for that.
        ->Interview312Hotel

//Maybe vary his reaction based on how well you did?
===Interview312Hotel===
<i>With that, you hear Gordon stand up out of his chair. He says:</i>

Well {player_name}, that about covers it. Thanks again for coming in to chat.

I have your contact information on file, so once I'll be sure to reach out in a few days once I've come to a hiring decision.

*[Great, thank you!]
    Of course, my pleasure.
    ->Interview313Hotel

//Maybe want to include this at the beginning of the interview instead?
*[(Extend your hand for him to shake)]
    <i>Gordon firmly clasps your hand.</i>
    ->Interview313Hotel
    
*[Alright, bye.]
    Uh, you might want to work on your professional demeanor there. Well, anyway.
    ->Interview313Hotel
    
===Interview313Hotel===
It was good talking to you {player_name}. I'll have our receptionist show you out.
->Interview314Hotel

//IMPORTANT: Add logic determing whether or not the player succeeds in getting the job interview.
===Interview314Hotel===
<i>A few minutes later you're back on the sidewalk, texting your aunt to come pick you up. You feel the relief set in now that your interview is over.</i>

<i>Still, you can't help but wonder how you did.</i>

*[(CONTINUE)]
    <i>A few days go by. Then a few more.</i>
    
    **[(CONTINUE)]
        ->HearBack301

//Should we mention Gordon's last name?
//Is this rejection email maybe more "big kid"?
===HearBack301===
{
    -current_interview_employer == "hotel":
    
        <i>Then, you notice an email in your inbox one day. It's from Gordon.</i>
        
            *[(Open it)]
                {
                    -succeeded_interview == true:
                        <i>You read Gordon's email, and feel a surge of excitement wash over you. You've been hired! He's giving you the job!</i>
                        
                        **[(CONTINUE)]
                            ->HearBack302GotTheJob
                
                    -succeeded_interview == false:
                        <i>You open Gordon's email. It reads:</i>
                        
                        Dear {player_name},
                        
                        Thank you so much for applying for the Pool Receptionist. Unfortunately, we have decided not to move forward with your application at this time. We hope that you'll consider applying again in the future.
                        
                        Sincerely,
                        Gordon
                        
                        **[(CONTINUE)]
                            ->HearBack302MissedTheJob
                }
    
}

===HearBack302GotTheJob===
<i>You go into another room to tell someone, and come across your aunt and uncle watching TV. Delighted, Aunt Tilly says:</i>

You got it? They said yes? That's amazing! Congratulations {player_name}!

<i>You can tell Uncle Scott is beaming with pride. He says:</i>

Well done {player_name}. I knew you could do it.

So, how do you feel?

*[I'm really excited!]
    Glad to hear it.
    ->HearBack303GotTheJob

*[Pretty good, I guess.]
    ->HearBack303GotTheJob

*[I'm kind of nervous.]
    Don't worry, that's completely normal.
    ->HearBack303GotTheJob
    
===HearBack303GotTheJob===
Tomorrow we can talk all about what you'll need to do to get ready for your first day of work, but for now, congratulations {player_name}. We're both so proud of you.

<i>Aunt Tilly adds:</i>

Hear hear.

*[(CONTINUE)]
    <i>At the end of the day, you head to bed wondering what the future holds. You've just gotten your first real job.</i> 
    
    <i>You're relieved to be done with applying for jobs, proud of the work you've done to make it this far. But what awaits you on your first day of work? How will your life change now that you've landed a summer job in Lilymist Valley?</i>
    **[(Complete Chapter 3)]
    ->Complete_Chapter_3
    
=== Complete_Chapter_3 ===
#CHAPTER COMPLETE: 3
    ->DONE
    
===HearBack302MissedTheJob===
<i>Disappointed, you go to tell your uncle. He says:</i>

Yeah, that's the way it can be sometimes. You can even get as far as the interview and still not land the job.

Don't worry {player_name}. Getting a rejection is just part of the process. Oftentimes you'll get loads of rejections before you land a position. That's totally normal.

*[So, what should I do now?]
    ->HearBack303MissedTheJob

*[That's annoying.]
    <i>You hear Uncle Scott grinning.</i>
    
    That it is {player_name}. But don't worry, you'll get used to it.
    ->HearBack303MissedTheJob

===HearBack303MissedTheJob===
There's only one thing you can do now, which is keep applying to more positions.

You may get more rejections, but that's completely okay. Just try to learn from your mistakes and keep at it.

Good luck {player_name}! If you need any more help, I'm always here.
->DONE

//IMPLEMENT REDOING CONTENT HERE