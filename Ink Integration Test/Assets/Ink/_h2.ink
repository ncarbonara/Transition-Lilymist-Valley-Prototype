VAR player_name = "Alex"

//Vars for what the player did with their resume previously
VAR hasResume = true
VAR resumeNursery = true
VAR resumeBakery = true

//Used for the RiverHouse scene
VAR had_pie = false

//Vars for Previously Applied Places
VAR number_of_applied_jobs = 0
VAR applied_to_hotel_pool = false
VAR applied_to_coffee_shop = false
VAR applied_to_plant_shop = false

//Vars for Following Up
VAR have_contact_info = false
VAR currentlyFollowingUpWith = "none"
VAR succeededFollowUpHotel = false
VAR succeededFollowUpNursery = false
VAR succeededFollowUpCafe = false

//Vars for succeeded in applying
VAR interviews_earned = 0
VAR earned_hotel_interview = false
VAR earned_nursery_interview = true
VAR earned_cafe_interview = true

//Vars for determining what interview the player is focusing on in the next chapter
VAR preparing_for_interview = ""

<i>You crawl slowly out of bed. You remember that you need to look for a job today. But first, breakfast.</i>

<i>As you crawl comfortably out of bed, you think you hear your uncle in the kitchen.</i>

<i>You navigate down the hallway, and find him turning the pages of a newspaper.</i>

Mornin', sunshine. Take a seat, I'll fix you up somethin'.

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
    ->Morning404

*[I'm just eating.]
    Well, I know you wanted to apply to some places today, so I wanted to just wish you good luck!
    ->Morning404

*[Yeah.]
    We can talk later if you want, but I just wanted to wish you good luck real quick!
    ->Morning404
    
===Morning404===
If you wanted to go for Lilymist Hotel, they're hiring a Pool Receptionist. I don't know if they're "actively hiring", but they seemed interested. Could be pretty fun, not to mention prestigious. You'll apply online for that one.

+[(CONTINUE)]
    After talking to my friend Sandra, I know for a fact the Greenmoss Nursery is hiring a Nursery Assistant. Lots of outdoor work. They're hiring anyone apparently. Their application is online, too.
    
    ++[(CONTINUE)]
        Guh, the Crumble Café would be such a cool place to work, too. Seems like it's so difficult to get in, but I feel like the owner is pretty open. No harm in applying. Also online, I think.
        
        +++[(CONTINUE)]
            And, yeah. That's all I've got. Did you need me to repeat any of that?
            
            ++++[No, I've got it.]
                ->Morning405
            
            ++++[Could you repeat that again?]
                ->Morning404
                
===Morning405===
Okay, well good luck! I'll come over later before we go to the River House tonight.

*[Wait, what?]
    ->Morning406

*[Are you scheduling things for me?]
    ->Morning406

===Morning406===
Oh! I'm so sorry, I forgot to tell you. My mom is throwing a welcome home party for me, and she wants you to come and be welcomed too! 
The River House is the diner my mom runs. I'm making sure you're coming. See you later, {player_name}! Good luck.
->ApplicationSegment201

===ApplicationSegment201===
<i>You get off the phone with Ren, and clean your dishes in the sink. Today is the day you've decided to start applying to jobs.</i>
<i>Ren mentioned that each of the potential jobs had a description on their company website. You get on your computer and decide to look them up.</i>
->ApplicationSegment202

===ApplicationSegment202===
{applied_to_hotel_pool == false:
+[Learn more about the Lilymist Hotel job.]
    <i>You go to the Lilymist Hotel's website, and navigate to the Careers page. You click the "Pool Receptionist" job to get a detailed description.</i>
    
    ++[(CONTINUE)]
        <i>"Attend to customer's basic needs in our pool & recreational area, such as but not limited to: renting towels, giving directions, assisting with lost items, checking guests into the pool area. Identify and resolve customer issues. Transfer issues to supervisor when necessary. Organization and people skills are a plus."</i>

            +++[Apply for this job.]
                ->ApplicationSegment203a
        
            +++[Learn about a different job.]
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            +++[Finish your job search for the day.]
                -> ApplicationSegment206
            }
    }

{applied_to_plant_shop == false:
+[Learn more about the Greenmoss Nursery job.]
    <i>You go to the Greenmoss Nursery's website, and navigate to a section labeled "Work With Us." You click the "Nursery Assistant" job.</i>
    
    ++[(CONTINUE)]
        <i>"Our assistants are primarily responsible for the upkeep of our outdoor displays, including our botanical gardens. Assistants will also help with stocking and merchandising of our indoor gardening store. Prior experience is a plus but not required.</i>
        <i>"Must have strong interpersonal skills, and a passion for the outdoors."</i>
        
            +++[Apply for this job.]
                ->ApplicationSegment203b
        
            +++[Learn about a different job.]
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            +++[Finish your job search for the day.]
                ->ApplicationSegment206
            }
}

{applied_to_coffee_shop == false:
+[Learn more about the Crumble Café job.]
    <i>You go to the Crumble Café's website. It takes a long time, but you find a "Jobs" section. You click a job you feel you would be qualified for: "Bakery Staff."</i>
    
    ++[(CONTINUE)]
        <i>"In this role, you will help make breads, pastries, and desserts in our kitchen under reasonable supervision. Must be comfortable working with food and using multiple types of ovens. All food and recipe training will be on-site. No experience necessary. Positive attitude and a love for the Crumble Café is a plus."</i>
        
            +++[Apply for this job.]
                ->ApplicationSegment203c
        
            +++[Learn about a different job.]
                ->ApplicationSegment202
            
            {number_of_applied_jobs > 0:
            +++[Finish your job search for the day.]
                -> ApplicationSegment206
            }    
}

{number_of_applied_jobs > 0:
+[Finish your job search for the day.]
    ->ApplicationSegment206
}

===ApplicationSegment203a===
<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>
<i>There's a question on the application that sticks out to you, in which you must type your answer: "Are you visually impaired and require reasonable accommodation to perform job duties?"</i>

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

<i>The application now looks complete. You send it in, hoping for the best.</i>
->ApplicationSegment202

===ApplicationSegment203b===
~applied_to_plant_shop = true
~number_of_applied_jobs++

<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>
<i>Strangely, you couldn't find any extra questions on the application.</i>

*[(CONTINUE)]
    <i>The application now looks complete. You send it in, hoping for the best.</i>
    ->ApplicationSegment202
    
===ApplicationSegment203c===
<i>You begin to fill out the application, inputting basic things like your name, your address, and your availability. You declare yourself as available as possible.</i>
*[(CONTINUE)]
->ApplicationSegment204c

===ApplicationSegment204c===
<i>There's a question on the application that sticks out to you, in which you must type your answer: "If you were a loaf of bread, which would you be and why?"</i>

*[Sourdough.]
    <i>You put down "Sourdough" in the answer box, and manage to give a reason for it, despite the strange question.</i>
    
    **[(CONTINUE)]
        ->ApplicationSegment205c

*[Wheat.]
    <i>You put down "Wheat" in the answer box, and manage to give a reason for it, despite the strange question.</i>
    
    **[(CONTINUE)]
        ->ApplicationSegment205c

*[White.]
    <i>You put down "White" in the answer box, and manage to give a reason for it, despite the strange question.</i>

    **[(CONTINUE)]
        ->ApplicationSegment205c
    
===ApplicationSegment205c===
~applied_to_coffee_shop = true
~number_of_applied_jobs++

<i>The application now looks complete. You send it in, hoping for the best.</i>
->ApplicationSegment202

===ApplicationSegment206===
<i>You leave your computer, proud of the work you did. You take a deep breath. Applying can take a lot of energy out of you.</i>

*[(CONTINUE)]
->RiverHouse201

===RiverHouse201===
<i>You take an afternoon nap on the couch while Aunt Tilly watches a knitting show, meticulously following along with a creation of her own. Aware of the party at the River House Café tonight, Aunt Tilly nudges you when it's time to go. The two of you briefly get ready, and head off by car.</i>

*[(CONTINUE)]
->RiverHouse202

===RiverHouse202===
<i>Upon parking, you can already hear the sound of classic oldies rock 'n' roll music from outside. You leave the truck and touch your foot down onto a gravel lot. You take Aunt Tilly's arm as the two of you enter the diner. The sound of 50s and 60s music surrounds you.</i>

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

*[Hi, Ren.]
->RiverHouse205

*[You better believe it.]
Ha! Yeah, you're here!
->RiverHouse205

*[(Prank her) Wait, uh, who are you?]
Oh, I'm so-so-so-so sorry! It's Ren. I didn't mean to, er.
->RiverHouse205

===RiverHouse205===
How about starting off with some of my mom's famous cherry pie? It's for us!

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
<i>Ren replies to her:</i>

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
Well, following up is only the most guaranteed way to make sure you stand out from the crowd. Well, aside from applying.

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

        <i>Ren calls back out to her:</i>
        
        Thanks, Mom!
        
        <i>You hear the sound of Ren's fork separating the pie on her plate. A moment later, she says with her mouth full:</i>
        
        Mmm, oh my gosh, I can't believe how much I missed this.
        
        *[(CONTINUE)]
            ->RiverHouse212
}

===RiverHouse212===
<i>Ren continues:</i>

It's so great to be back in Lilymist. I thought I'd never be back after my train trip. That was when we met, actually!

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
<i>Ren claps eagerly.</i>

You're gonna love it, I'm sure!
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
<i>Then, Aunt Tilly chimes in.</i>
Have a nice time with Ren, dear! She's right, the theater is marvelous, and I happen to know that Mr. Crenshaw, the tour guide, is great about visually describing everything that's in there. He doesn't miss a detail!

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
Hi, Mr. Crenshaw! This is {player_name}. They're new in town.

*[(CONTINUE)]
->Theater203

===Theater203===
Is that so? Well, {player_name}, it's a pleasure to meet you. I'm Teddy Crenshaw, your tour guide for this evening here at the remarkable Barlow Theatre. Feel free to call me "Teddy," "Mr. Crenshaw," "Mr. Teddy," it's all the same to me!

*[Thanks for having us!]
    The pleasure's all mine! Now, let's get started.
    
    **[(CONTINUE)]
        ->Theater204

*[What's the first stop on the tour?]
    Eager to see the theater, are we? I certainly don't blame you. Let's get started.
    
    **[(CONTINUE)]
        ->Theater204

*[Okay then, "Teddy-mister-Crenshaw-mister-Teddy."]
    <i>You hear the grin in Teddy's voice.</i>
    
    A comedian, eh? You would've done well at the Barlow Theatre during its heyday. This theater hosted both vaudeville comedy acts and stage plays back in the 1920s.

    **[(CONTINUE)]
        ->Theater204

===Theater204===
<i>You and Ren follow Teddy through a pair of thick, heavy doors. With pride, Teddy says:</i> 
Welcome to the Barlow Theatre's main stage. Before you is one of the most opulently decorated stages in the region.

#SFX: HeavyDoubleDoors
#Ambiance: EmptyTheater

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

+[Were did he travel?]
    All over the world. He was born in 1898 to a pair of farmers in a small town in England, but, being a restless man, he didn't stay there long. In his twenties he traveled all of Europe, from Wales down to Greece, and even ventured as far as Japan.
    <i>Ren interjects:</i>
    Imagine how cool that would be. And he was only 21!
    ->Questions_About_Sam_Barlow
    
+[Why settle down in Lilymist?]
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
    
    Depends on who you ask. His first work, <i>Man Adrift</i>, was a comedy about a sailor who finds himself shipwrecked on an island, where, by sheer coincidence, all of his forgotten schoolfriends, former lovers, and family members have shipwrecked as well. He's forced to reconcile with them as they all wait to be rescued.
    
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
#Ambiance: None

*[(CONTINUE)]
    This dressing room still gets a lot of use. Our local young performance troupe, the Barlow Society, puts on shows here every couple of months, and folks come from all over to see our Shakespeare performances in the spring and summer.
    
    <i>You can practically hear Ren bouncing on her heels.</i>
    
    Isn't this great, {player_name}? It's like having a slice of history right in your own backyard!
    
    **[Yeah, this is amazing!]
        ~player_likes_history = true
        Right? Some of my friends think it's weird to be this into history. It's nice to hang out with somebody who gets it. ->Tour_Continues_2
            
    **[You really love this stuff, don't you?]
         ~player_likes_history = false
        Only with my entire heart and soul! Some people think it's werid to be as into history as I am, but what do they know? ->Tour_Continues_2
    
    **[I don't really get it.]
        ~player_likes_history = false
        Aah, I bet you just haven't had somebody teach it to you in a way that's fun. ->Tour_Continues_2

=== Tour_Continues_2 ===
When it comes down to it, history is all about stories, and who doesn't love a good story?

*[(CONTINUE)]
    <i>After exploring the backstage area, Teddy shows you the front of the building, the theater balcony, the lounge area, and the changing rooms that theater-goers would've used back in the 20s. Ren has something to add about each and every little detail.</i>
    
    **[(CONTINUE)]
    -> Tour_Continues_3

=== Tour_Continues_3 ===
<i>Finally, Teddy walks you through the door of a smaller room near the back of the theater.</i>
And here we have Sam Barlow's office, where he did most of the writing for his plays. We've furnished the room to resemble what it might have been like back in the 1920s.
<i>Ren gasps, clapping her hands together.</i>
Oh, wow! It's so authentic! 

#SFX: WoodDoorOpeningClosing
#Ambiance: OldOfficeWithTickingClock

*[(CONTINUE)]
    {player_name}, there're a ton of great pieces of Art Deco furntirue in here. This dark wooden desk, that old-fasioned wall clock, this little four-legged writing stool, and – oh my gosh – that's a typewriter! Mr. Crenshaw, you didn't tell me you set all this up!
    
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
        Never be embarassed about your passion, Ren.
        
        ****[(CONTINUE)]
            ->Tour_Over

=== Tour_Over ===
Anyway, I'll let you two admire the room for a little bit. Enjoy, you two, and thanks for visiting the theater!
<i>As he steps out, Ren replies:</i>
Thanks, Mr. Crenshaw, we really appreciate it!

#SFX: WalkingAway

*[(CONTINUE)]
-> Post_Tour_with_Ren

=== Post_Tour_with_Ren ===
{player_likes_history == true:
   <i>Ren turns back to you.</i>
   Isn't this something, {player_name}? It's especially nice to come through here with a fellow history geek. Thanks for doing this with me!
    -else:
    <i>Ren turns back to you.</i>
    Isn't this something, {player_name}? I know you might not be a huge history dork like me, but I'm glad you came anyway. It's nice to be able to share this with somebody.
    }
    
    #SFX: WoodDoorOpeningClosing
    
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
        Maybe some other time. I'm not sure I'm ready for that kind of embarassment. Tell you what, maybe I'll show you my latest draft next time we hang out.
        
        **[(CONTINUE)]
        -> Leaving_the_Theater
        
=== Leaving_the_Theater ===
<i>You and Ren walk home together, chatting about this-and-that as you go.</i>

*[(CONTINUE)]
-> Follow_Up_Segment_Start

=== Follow_Up_Segment_Start ===
<i>Over the next few days, you continue settling in and exploring the town. The smell of fresh dew on your aunt and uncle's farm, the sound of the waterfall, and the smell of fresh muffins wafting out of the Crumble Café all become familiar to you.</i>

*[(CONTINUE)]

    {number_of_applied_jobs > 1:<i>You wake up about a week in to your stay, and remember your job applications.|You wake up about a week in to your stay, and remember your job application.} You wonder if there's anything you should do while you wait to hear back.</i>
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
~ have_contact_info = true
    <i>You sit down at your computer and look up the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} online. Sure enough, you find their website. Letting the computer's voice read back the page's contents, you eventually find their contact information section, which includes their phone number and email address.</i>
    {number_of_applied_jobs == 3:<i>While you're at it, you decide to look up the contact information for the other two places as well.</i>}
    {number_of_applied_jobs == 2:<i>While you're at it, you decide to look up the contact information for the other place you applied to as well.</i>}
    **{currentlyFollowingUpWith == "cafe" || currentlyFollowingUpWith == "nursery"} [Call the {currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}.]
    ->Make_a_Call_Nursery_Or_Cafe
    **[Send them an email.]
    ->Send_an_Email 

*[Ask your aunt.]
<i>You hear Aunt Tilly passing through the room, and stop her to ask about the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}'s contact information.</i>
<i>She replies,</i> Oh, I'm not sure come to think of it. Maybe you can look it up somewhere?
->Whats_Their_Contact

*[Let it go for now.]
->Follow_Up_Options

=== Make_a_Call_Hotel ===
<i>You find the note that Ren got from the concierge at the hotel. On it is the hotel hiring manager's number. You punch it into your phone, then put it up to your ear. A moment later, you hear a man's voice on the other end:</i>

Lilymist Hotel, this is Gordon speaking.
    
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
    <i>You hang up.</i>
    -> Follow_Up_Options
    
=== Make_a_Call_Hotel_2 ===
*[Do you have time for an interview this week?]
I like your initiative! If you're a good fit we should be able to set something up for this week, yes.
-> Make_a_Call_Hotel_2

*[Sounds good, thanks!]
No problem, have a good day.
<i>He hangs up.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
Most likely I'll have an answer for you in the next one-to-two days. Don't worry, it's coming soon.
-> Make_a_Call_Hotel_2

=== Make_a_Call_Nursery ===
<i>In a light, sing-song voice you hear a woman say:</i>
Hello! Greenmoss Nursery, how can we help you?

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
<i>You hang up.</i>
-> Follow_Up_Options
    
=== Make_a_Call_Nursery_2 ===
*[Do you have time for an interview this week?]
Ah, an eager beaver, I see! We should be able to set something up this week if the position turns out to be a good fit.
-> Make_a_Call_Nursery_2

*[Sounds good, thanks!]
Of course, have a nice day!
<i>She hangs up.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
It shouldn't be too long, maybe another day or two. We'll reach out soon!
-> Make_a_Call_Nursery_2

=== Make_a_Call_Cafe ===
<i>You hear an older, but energetic-sounding voice on the other end:</i>

Crumble Café, Herb speaking. How can I help you?

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
<i>You hang up.</i>
-> Follow_Up_Options

=== Make_a_Call_Cafe_2 ===
*[Do you have time for an interview this week?]
I respect someone wanting to get a jump on things. Tell you what, I'll get back to you once I finish reviewing your application. If you're a good fit, we'll set something up.
-> Make_a_Call_Cafe_2

*[Sounds good, thanks!]
Yup. You have a good day, now. 
<i>He hangs up.</i>
-> Follow_Up_Options
    
*[Do you know when you'll get back to me?]
I think I can get back to you in a day or two. Shouldn't be too long.
-> Make_a_Call_Cafe_2

=== Make_a_Call_Nursery_Or_Cafe ===
    {not have_contact_info:<i>You reach into your pocket for your phone and start to dial a number, only to realize that you don't know what their number is.</i>-> Whats_Their_Contact|<i>You dial their number on your phone, then put it to your ear as you wait for someone to pick up. Finally, someone does.</i>}
    {currentlyFollowingUpWith == "nursery": ->Make_a_Call_Nursery}
    {currentlyFollowingUpWith == "cafe": ->Make_a_Call_Cafe}

=== Send_an_Email ===
    {not have_contact_info:<i>You sit down at your computer and start thinking about what you want to say, when you realize that you don't know what their email address is.</i>-> Whats_Their_Contact|<i>You open up your email, and create a brand new, blank message. At the top, you put in their email address.</i>-> Writing_the_Email}
    
=== Writing_the_Email ===
<i>You write a pleasant, professional introduction, then stop and wonder about what you want your email to say.</i>
+[Show enthusiasm about the job.]
<i>You write about how you'd be excited to work at the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café}. After carefully proofreading your email, you hit send.</i>
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
+[Explain why you'd be a good fit.]
<i>You summarize your skills, and make a good case for why you think you'd be a great fit for the {currentlyFollowingUpWith == "hotel": hotel pool}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} job. After carefully proofreading your email, you hit send.</i>
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
+[Ask if they have time for an interview this week.]
<i>You explain that you'd be happy to attend an interview with them at the {currentlyFollowingUpWith == "hotel": hotel}{currentlyFollowingUpWith == "nursery": nursery}{currentlyFollowingUpWith == "cafe": café} this week, if they have time. After carefully proofreading your email, you hit send.</i>
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
+[Ask what's taking them so long to review your application.]
<i>You write a few words about how you've been waiting an entire week to hear back from them. After carefully proofreading your email, you hit send.</i>
->Follow_Up_Options

=== Give_Up ===
    {currentlyFollowingUpWith == "none": <i>You decide to just be patient and let them get back to you when they get back to you.</i>|<i>You decide to stop doing follow-ups for now.</i>}
    *[(CONTINUE)]
    -> Kai201

=== Kai201 ===
<i>With follow-ups out of the way, you don't have anything left to do with your job applications. All you can do is wait and hope.</i>

<i>With your aunt outside working and your uncle at his chiropractor job, the house is quiet and peaceful. You wonder how you should spend the rest of your day to take your mind off of your applications.</i>

*[Relax in front of the TV.]
    <i>You decide it would be nice to catch up on your favorite shows. You sit down in front of the TV, find the remote, and click it on.</i>
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
VAR festivalWithKai = false
<i>An instant later, you hear a skateboard pull up in front of your house followed by some rapid knocking on the door. You open up and hear Kai, talking fast.</i>

{player_name}, hey! you gotta check out what's happening downtown. C'mon!

#SFX: SkateBoardStop

*[Uh, sure!]
    Dope, let's go!
    ->Kai205

*[You mean right now?]
    You'll love it, I promise. Now, let's go!
    ->Kai204

*[I'm kind of in the middle of something.]
    It'll be fun, I promise! Trust me, {player_name}, you won't want to miss this.
    ->Kai204

=== Kai204 ===
*[Okay, let's go!]
    Sweet, let's do it!
    ->Kai205

*[Pass, no thanks.]
    ->Kai204b

=== Kai204b ===
You sure? Well alright, you do you. Catch you later!

<i>You hear Kai jog down your front steps, hop back on his skateboard, and careen down the hill towards the center of town. As he goes, you step back inside back to what you were doing before. You can't help but wonder what he was talking about. Maybe you could still catch up to him if you ask Aunt Tilly for a ride?</i>

#SFX: DepartingSkateboard

*[Catch up with Kai. What the heck, right?]
    <i>Aunt Tilly agrees to take you. When you arrive downtown, you hear the sounds of music and laughter all around you. Soon, you hear Kai's voice ring out:</i>
    
    {player_name}! You made it after all! Here, let me lead you to the main event.
    ->Kai206

*[Stick to your other plans.]
    <i>You decide to stay home and relax instead.</i>
    ->UnclePepTalk201
    
=== Kai205 ===
<i>You follow Kai down the road from your aunt and uncle's house. When you arrive downtown, you hear the sounds of music and laughter all around you. Kai talks to you, unable to hide his excitement:</i>

Man, it's gonna be a great one this year!
->Kai206

=== Kai206 ===
#Ambiance: MusicFestival

*[What's going on?]
->Kai207

*[Where are you taking me?]
->Kai207

*[Am I being kidnapped?]
->Kai206b

===Kai206b===
<i>Kai laughs.</i>

Oh, yeah. But relax, this is going to be the most fun kidnapping you've ever experienced in your life.
->Kai207

=== Kai207 ===
It's Lilyfest, the town's big music festival. Everyone gathers out on the big lawn in front of the school to hear all the different local bands play. It's totally rad, check it out!

<i>As you follow Kai, you begin to pick out the sounds of instruments of all kinds around you. Kai moves carefully forward, moving around people and maneuvering past crowds and people standing in line. He apologizes to a few people:</i>
    
Whoops, sorry, don't mind us! Looks like we ran straight through the churro line, {player_name}. There's a lot more food trucks and stuff than there were last year.

<i>Sure enough, you pick up the tantalizing smell of frying food nearby.</i>

*[(CONTINUE)]
    <i>Soon, you and Kai maneuver past the crowds and find a space for yourselves beneath a tree. You lean back against the tree bark, taking in Lilyfest with all of your senses. Kai gives you a little nudge.</i>
    
    Pretty dope, right? I'd say this is worth me kidnapping you out of the blue. Besides, now you can help me with my master plan!
    
    **[Yeah, this is awesome!]
        Sweet, I'm glad you like it! I was taking a gamble on you being a music lover. When I remembered Lilyfest was happening today I thought, "What the heck? Let's see if {player_name} is down to come." I like to keep it spontaneous.
        
        Anyway, now that you're here, there's something you can help me with. ->Kai208
    
    **[Do you do "kidnap" all of your friends like this?]
        I dunno, sometimes when I'm doing something cool I like to invite people to come with me. Sometimes you just gotta be spontaneous. Live a little, y'know?
        
        Anyway, now that you're here, there's something you can help me with. ->Kai208
    
    **["Master plan"?]
        Nah, I mean it's not really a "master plan" exactly. I just thought that was fun to say. Really I'm more of a spontaneous kind of guy.
        
        Still, though, I also wanted to get your help with something. ->Kai208
    
=== Kai208 ===
You remember me mentioning that I'm a DJ, right? Well, the bread and butter of any DJ is samples! Here, look what I brought.

<i>Kai gently places a small, slightly heavy object into your hand. It's plastic, and has a lot of small, flat buttons on it.</i>

It's an audio recorder. It's a bit old, but the quality on it's pretty good. Think you can help me record some of these musician's sound? It'll give me great stuff to put in my mixes.
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
<i>You concentrate, trying to pick out individual instruments from the cacophany of beats, plucked strings, horns, laughter, and applause coming from across the school lawn.</i>

Well, {player_name}? What've you got for me?

*[I hear some acoustic guitar.]
    ->Kai212a

*[I think I hear salsa music.]
    ->Kai212b

*[That sounds like a lot of percussion over there.]
    ->Kai212c

===Kai212a===
<i>You and Kai stroll over to where the sound of warm, melancholy, twanging strings wafts tantalizingly across the school lawn. It's much queiter here, everyone standing in quiet appreciation of the guitarist's technique. You can hear every little squeak, creak, and vibration coming from the guitar. The sound is beautifully organic. Kai whispers to you:</i>

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
<i>You and Kai follow the sound of upbeat keyboards, saxaphone, and rollicking cowbell beats. As you approach, you hear a singer mix in Spanish lyrics and a few "la-la-la"s to the beat of the tambourine in her hand. All around you, you hear people clapping their hands to the intoxicating beat. Kai taps your shoulder and says:</i>

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

*[(CONTINUE)]
->Kai215

===Kai215===
<i>You and Kai listen to more music, buy some treats, talk about music, and enjoy the rest of Lilyfest.</i>

#Ambiance: MusicFestival

*[(CONTINUE)]
->Kai216

===Kai216===
<i>As the festival winds down, youn and Kai stroll over to the skatepark nearby and sit down on a bench. You hear the sound of a few skateboards gliding off the pavement a little ways in front of you as Kai speaks:</i>

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

#SFX: KaiStandUp

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

#SFX: skateboardLeave

*[(CONTINUE)]
    ->UnclePepTalk201

=== UnclePepTalk201 ===
<i>A few days go by, but there's still no word on your job {number_of_applied_jobs > 1:applications|application}.</i>

<i>One evening before dinner, your uncle stops by your room.</i>

Hey, {player_name}, how're you feeling?

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
After losing my sight? Quite a while. I got rejection after rejection, and some days I just wanted to give up. That's why I was lucky to have your Tilly around. She was always there to pick me up and dust me off, and refused to let me give up on myself.

<i>Uncle Scott laughs. He says:</i>

Your aunt doesn't take no for answer.
->UnclePepTalk204

===UnclePepTalk205b===
That's what your Aunt and I are here for. I'm sure your friends Ren and Kai will be there for you, too. You ever need advice, assistance, or any kind of moral support, you just let us know.
->UnclePepTalk204

===UnclePepTalk206===
<i>Uncle Scott smiles as he says:</i>

Anytime, {player_name}. Now, why don't you help me get the table set for dinner?

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

*[(CONTINUE)]
->ApplicationResults206a

===ApplicationResults206a===
//Checks to see if the player got interviews at the other two places.
{
    -applied_to_plant_shop == true && earned_nursery_interview == true && applied_to_coffee_shop == true && earned_cafe_interview == true: 

        //Also a nursery and cafe interview!
        <i>Over the next few days, you get similar calls from both the Crumble Café and Greenmoss Nursery. You performed well enough on your applications to get inteviews with them as well!</i>
        
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

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Sounds like this is your moment. Good luck, {player_name}!
    
    <i>You quickly take the phone out of your pocket and put it to your ear. You hear a light, chipper voice on the other end:</i>
    
    Hello, there! This is Matlida from Greenmoss Nursery. I'm reaching out to let you know that we wanted to schedule an interview with you in a few days!
    
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

*[(CONTINUE)]
    <i>Uncle Scott says:</i>
    
    Sounds like this is your moment. Good luck, {player_name}!
    
    <i>You quickly take the phone out of your pocket and put it to your ear. You hear an older voice on the other end:</i>
    
    Hello, {player_name}? This is Herb from the Crumble Café. I was wondering if you could come in for an interview this week.
    
    **[Yes, definitely!]
        Souds good. ->ApplicationResults203c
    
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

My, my, the day's barely half done and already I'm all tuckered out! By the way, I think Whitney misses you, {player_name}. You should go out there and talk to her sometime.

*[You mean Whitney, the horse?]
    Yes, indeed! I think she remembers you from last time you visted all those years ago. I think she took a shine to you.
    ->PickAJob202

*[How do you know she misses me?]
    Animals aren't too much different than people. They've got their "tells." Get to know one long enough, and you can tell when they're feeling a little down.
    ->PickAJob202

*[Is this a joke?]
    <i>Aunt Tilly laughs.</i>
    No, no. Just horses can't talk doesn't mean they don't like being talked to!
    ->PickAJob202

===PickAJob202===
You should go out there sometime to see her. I think she'd like your company.

*[That sounds like fun!]
    I had a feeling you were an animal lover. You and Whitney will get along well, I'm sure.
    ->PickAJob203

*[Okay, I will.]
    Thank you, {player_name}. Whitney will appreciate it.
    ->PickAJob203

*[Maybe.]
    When you've got some time, I think it'd be a nice thing to do.
    ->PickAJob203
    
===PickAJob203===
Anywho, sounds like you've got some thinking to do now that you've heard back about your job applications. What do you think you're going to do?
->PickAJob204

===PickAJob204===
{earned_hotel_interview: 
*[Prepare for the hotel job interview.]
    ~preparing_for_interview = "hotel"
    The hotel sounds like a great place to work! If you take the time to prepare for the interview, I'm sure you'll do well.
    ->PickAJob205
}

{earned_nursery_interview: 
*[Prepare for the nursery job interview.]
    ~preparing_for_interview = "nursery"
    Wonderful! I've always loved that place. If you take the time to prepare for the interview, I'm sure you'll do well.
    ->PickAJob205
}

{earned_cafe_interview: 
*[Prepare for the café job interview.]
    ~preparing_for_interview = "cafe"
    How fun! If you take the time to prepare for the interview, I'm sure you'll do well.
    ->PickAJob205
}

+[I'm not sure.]
    Well, now that you're in the interview stage of things, the most important thing is to make sure you're prepared. You'll want to put your best foot forward. That means dressing well, acting in a professional manner, and being prepared to answer all of the interviewer's questions.
    It might sound scary at first, but you'll get the hang of it!
    ->PickAJob204
    
===PickAJob205===
<i>You go to sleep that night wondering about what lies ahead of you. What do you need to prepare for your interview? How will it go? Will you land the job?</i>
        
<i>Nothing's certain yet, but you're sure that all your questions will be answered soon.</i>
->END

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
<i>One day, you're stitting outside on the front steps when you hear Ren's voice coming up the sidewalk:</i>

Hi, {player_name}! How're you doing? How's the job search going?

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
I've never heard of anyone whose ever applied for a job and gotten it on the first try. Kai told me that he had to apply to five different jobs last summer before he got anything.
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
//GOTTA PUT SOMETHING HERE!
->END

===FreeInterview201===
<i>Ren claps her hands together and says:</i>
Wait, I've got it! You remember that friend of mine, Sandra?

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

Okay! I'll reach out to Matlida and see if she'd be willing to give you an interview. My mom knows her too, so that might help. I'll let you know how it goes!

*[(CONTINUE)]
    <i>The next day, Ren texts you. Matlida, the owner of Greenmoss Nursery, has agreed to give you an interview! You give the good news to your aunt and uncle.</i>
    
    **[(CONTINUE)]
        ->PickAJob201
        


// To Chapter 3
// Carried over VARs:
//      - succeededFollowUpHotel
//      - succeededFollowUpNursery
//      - succeededFollowUpCafe



