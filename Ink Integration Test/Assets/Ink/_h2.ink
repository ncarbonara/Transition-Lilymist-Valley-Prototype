VAR player_name = "Alex"

//Vars for what the player did with their resume previously
VAR hasResume = true
VAR resumeNursery = true
VAR resumeBakery = true

//Vars for Previously Applied Places
VAR number_of_applied_jobs = 0
VAR applied_to_hotel_pool = true
VAR applied_to_coffee_shop = true
VAR applied_to_plant_shop = true

//Vars for Following Up
VAR have_contact_info = false
VAR currentlyFollowingUpWith = "none"
VAR succeededFollowUpHotel = false
VAR succeededFollowUpNursery = false
VAR succeededFollowUpCafe = false

You and Ren follow Teddy through a pair of thick, heavy doors. "Welcome to the Barlow Theatre's main stage," says Teddy with no small amount of pride. "Before you is one of the most opulently decorated stages in the region." 

His voice echoing off the theatre's walls, Teddy goes on to describe the space. "About 50 rows of seats in front of you is the stage. This entire room is decorated with polished brass ornaments and candle sconces, and the walls are lined with portraits of great playwrights, from Shakespeare to Aeschylus."

Next to you, you can hear Ren bouncing on her feet. "Ooh! Mr. Crenshaw, tell {player_name} about Sam Barlow!"

#SFX: HeavyDoubleDoors
#Ambiance: EmptyTheater

*[Yep, you're definitely a history buff, alright.]
    "That she is," says Teddy. "She could practically run this tour herself if she wanted to." -> Sam_Barlow
    
*[Was he a playwright?]
    "Of a sort," says Teddy. 
    -> Sam_Barlow
    
*[Let's just move on with the tour.]
    "Alright, then," says Teddy. "I can see you're eager to get a taste of the space."
    -> Tour_Continues
    
=== Sam_Barlow ===
Teddy goes on. "Samuel Barlow was the architect who built this theater. A renaissance man, he traveled the world in search of inspiration, then came here to Lilymist to build a theater where his plays could be shown. He was English, hence the reason 'Barlow Theatre' is spelled with the 'E' after the 'R.'" 
-> Questions_About_Sam_Barlow

=== Questions_About_Sam_Barlow ===

*[Were did he travel?]
    "All over the world. He was born in 1898 to a pair of farmers in a small town in England, but, being a restless man, he didn't stay there long. In his twenties he traveled all of Europe, from Wales down to Greece, and even ventured as far as Japan."
    "Imagine how cool that would be," says Ren. "And he was only 21!"
    ->Questions_About_Sam_Barlow
    
*[Why settle down in Lilymist?]
    "After travelling the world over, he decided that he wanted to be an artist. He tried his hand at a number of different trades, eventually becoming a decent architect, but it was the stage that caught his eye the most."
    "Playwriting specifically," Ren adds.
    Teddy smiles. "Why, of course. When he first travelled to America, Broadway was in its heyday, but he dreamed of establishing a chain of big theatres in smaller, rural towns just like the one he'd grown up in back in England."
    "Hmm," Ren interjects. "Some part of him must've missed home. He wanted to travel the world, but he couldn't just give that up."
    "Not a bad theory, Ren," says Teddy.
    ->Questions_About_Sam_Barlow
    
*[Were his plays any good?]
    Teddy chuckles. "Depends on who you ask. His first work, <i>Man Adrift</i>, was a comedy about a sailor who finds himself shipwrecked on an island, where, by sheer coincidence, all of his forgotten schoolfriends, former lovers, and family members have shipwrecked as well. He's forced to reconcile with them as they all wait to be rescued."
    Ren laughs. "It's a bit of a ridiculous premise," she says.
    "Indeed," says Teddy. "A lot of people compare the protagonist's struggle to avoid all these people in his life with Barlow's own conflicted feelings about leaving his home in England behind to travel the world." Teddy clears his throat. "Unfortunately, though, few critics liked <i>Man Adrift</i>, or any of his subsequent plays. After a while, it became difficult for Sam Barlow to find any big-name theater companies that were willing to put on his shows."
    "Yeah." Ren sighs. "I guess his passion didn't really line up with what people wanted to see on Broadway."
    "Right," says Teddy. "So, being the ambitious man he was, he decided to make his own production company to make his plays, and his own theater where he could show them. Hence, the Barlow Theatre!"
        ->Questions_About_Sam_Barlow
    
*[Let's continue on with the tour.]
    "Alright, then," says Teddy. 
    -> Tour_Continues

=== Tour_Continues ===
VAR player_likes_history = false
//Maybe we need something else here?
//Note to self, do a bit of research on what backstage areas of theaters are like, sense-wise.
Teddy walks you and Ren up onto the stage, then to another set of doors. "Welcome backstage!" he says. "This is where all the magic happened, so to speak. Sam Barlow made a point of hiring local actors and stage professionals from Lilymist for his plays. They never made that big of a splash on the national theater scene, but thanks to this theater being here the community in Lilymist developed a love for performance that never really went away in the century that followed. Our local young performance troupe, the Barlow Society, still puts on shows here every couple of months, and folks come from all over the region to see our Shakespeare performances in the spring and summer."
    "Isn't this great, {player_name}?" says Ren. "It's like having a slice of history right in your own backyard!"
    
#SFX: HeavyDoubleDoors
#Ambiance: None
    
    *[Yeah, this is amazing!]
        ~player_likes_history = true
        "Right?" says Ren. "Some of my friends think it's weird to be this into history. It's nice to hang out with somebody who gets it.->Tour_Continues_2
            
    *[You really love this stuff, don't you?]
         ~player_likes_history = false
        Ren responds immediately. "Only with my entire heart and soul! Some people think it's werid to be as into history as I am, but what do they know?->Tour_Continues_2
    
    *[I don't really get it.]
        ~player_likes_history = false
        "Aah, I bet you just haven't had somebody teach it to you in a way that's fun.         ->Tour_Continues_2

=== Tour_Continues_2 ===
When it comes down to it, history is all about stories, and who doesn't love a good story?"
//Consider adding more cool sensory detail here.
//Emphasize that Barlow wanted this to be "little Broadway."
After exploring the backstage area, Teddy takes you on a tour of the rest of the theater. He describes the front of the building to you, then takes you up to the balcony, then around the lounge area and changing rooms that theater-goers would've used back in the 20s. Ren has something to say about each and every little detail that Teddy shows you.
-> Tour_Continues_3

=== Tour_Continues_3 ===
//Pencil in sensory details
Finally, Teddy walks you through the door of a smaller room near the back of the theater.
"And here we have Sam Barlow's office," he says. "We've furnished the room to resemble what it might have been like back in the 1920s."
Ren gasps, clapping her hands together. "Oh, wow!" she says, "It's so authentic! {player_name}, there're a ton of great pieces of Art Deco furntirue in here. This dark wooden desk, that old-fasioned wall clock, this little four-legged writing stool, and—" Ren stops. "Oh my gosh, that's a typewriter! Mr. Crenshaw, you didn't tell me you set this all up!"
Teddy laughs. "Well, I thought I'd surprise you. You've been on this tour enough times. I thought it'd be nice to give you a little something that you hadn't seen yet. Besides, I thought maybe this could give you a bit of inspiration for that novel you're working on."
"Oh," says Ren, a little shyly, "Thanks, Teddy! I mean, I haven't been working on that novel in a while. And besides, it's set in 1800s, not the Roaring Twenties."

#SFX: WoodDoorOpeningClosing
#Ambiance: OldOfficeWithTickingClock

*[You're writing a novel? That's so cool!]
    "Aww, thanks, {player_name}. It's not really anything serious, though. I haven't even finished the first draft."
    "Well," Teddy interjects, "last you told me it was up to 200 pages. I'd wager you're getting pretty close to your draft!->Tour_Over
    
*[Wait... it's not a Victorian Romance, is it?]
    "Oh my gosh," says Ren, laughing, "don't make me regret I told you that I read those, {player_name}. But yes, it is."
    "Don't be embarassed of your passion," says Teddy. "-> Tour_Over

=== Tour_Over ===
Anyway, I'll let you two admire the room for a little bit. Enjoy, you two, and thanks for visiting the theater!"
"Thanks, Teddy," says Ren, "We really appreciate it!"
-> Post_Tour_with_Ren

=== Post_Tour_with_Ren ===
{player_likes_history == true:
   As Teddy steps out of the room, Ren turns back to you. "Isn't this something, {player_name}? It's especially nice to come through here with a fellow history geek. Thanks for doing this with me!"
    -else:
    As Teddy steps out of the room, Ren turns back to you. "Isn't this something, {player_name}? I know you might not be a huge history dork like me, but I'm glad you came anyway. It's nice to be able to share this with somebody."
    }
    
    #SFX: WoodDoorOpeningClosing
    
    *[I'm glad we did this, too!]
        "That's great! We should definitely hang out some more when you're able to take a break from the job hunt."
        -> Leaving_the_Theater
    
    *[I feel like I learned a lot about you.]
        "Yeah! What can I say? This girl loves old stuff. That, and stories. The Barlow Theatre has both! Anyway, we should definitely hang out some more when you're able to take a break from the job hunt."
        -> Leaving_the_Theater
        
    *[So, tell me about this novel you're writing...]
        Ren chuckles. "Maybe some other time. I'm not sure I'm ready for that kind of embarassment. Tell you what, maybe I'll show you my latest draft next time we hang out."
        -> Leaving_the_Theater
        
=== Leaving_the_Theater ===
<i>You and Ren walk home together, chatting about this-and-that as you go.</i>
-> Follow_Up_Segment_Start

=== Arrive_Home_with_Tilly ===
<i>You and Aunt Tilly get into her car, and within minutes you're home.</i>
-> Follow_Up_Segment_Start

=== Follow_Up_Segment_Start ===
<i>Over the next few days, you continue settling in and exploring the town. The smell of fresh dew on your aunt and uncle's farm, the sound of the waterfall, and the smell of fresh muffins wafting out of the Crumble Café become familiar to you.</i>

{applied_to_hotel_pool:
~number_of_applied_jobs++
}
{applied_to_plant_shop:
~number_of_applied_jobs++
}
{applied_to_coffee_shop:
~number_of_applied_jobs++
}

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

Lilymist Hotel, Gordon speaking.
    
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
    Oh, of course. Have a great day.
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
That would be me. I'm Matilda, the owner of Greenmoss Nursery, so I handle most of our hiring decisions. Are you interested in a job?

    **[I'm calling to follow up about a job application.]
    {resumeNursery:Oh, great! Are you {player_name}? I heard that you dropped off your resume a little while ago. Don't worry, we'll get back to you soon.}
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
    {not have_contact_info:<i>You reach into your pocket for your phone and start to dial a number... only to realize that you don't know what their number is.</i>-> Whats_Their_Contact|<i>You dial their number on your phone, then put it to your ear as you wait for someone to pick up. Finally, someone does.</i>}
    {currentlyFollowingUpWith == "nursery": ->Make_a_Call_Nursery}
    {currentlyFollowingUpWith == "cafe": ->Make_a_Call_Cafe}

=== Send_an_Email ===
    {not have_contact_info:<i>You sit down at your computer and start thinking about what you want to say... when you realize that you don't know what their email address is.</i>-> Whats_Their_Contact|<i>You open up your email, and create a brand new, blank message. At the top, you put in their email address.</i>-> Writing_the_Email}
    
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
    -> Post_Follow_Up_Sequence

=== Post_Follow_Up_Sequence ===

-> END

// To Chapter 3
// Carried over VARs:
//      - succeededFollowUpHotel
//      - succeededFollowUpNursery
//      - succeededFollowUpCafe


