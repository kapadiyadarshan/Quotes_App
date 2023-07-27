import '../models/quote_model.dart';

List<Map> allQuoteData = [
  {
    "quote": "Damien Hirst is the Elvis of the English art world, its ayatollah, deliverer, and big-thinking entrepreneurial potty-mouthed prophet and front man. Hirst synthesizes punk, Pop Art, Jeff Koons, Marcel Duchamp, Francis Bacon, and Catholicism.",
    "author": "Jerry Saltz",
    "category": "Art"
  },
  {
    "quote": "Bullfighting is the only art in which the artist is in danger of death and in which the degree of brilliance in the performance is left to the fighter's honor.",
    "author": "Ernest Hemingway",
    "category": "Art"
  },
  {
    "quote": "In art the best is good enough.",
    "author": "Johann Wolfgang von Goethe",
    "category": "Art"
  },
  {
    "quote": "Art must take reality by surprise.",
    "author": "Francoise Sagan",
    "category": "Art"},
  {
    "quote": "Ability is the art of getting credit for all the home runs somebody else hits.",
    "author": "Casey Stengel",
    "category": "Art"
  },
  {
    "quote": "Acting is not being emotional, but being able to express emotion.",
    "author": "Reid, Kate",
    "category": "Art"},
  {
    "quote": "Healing,' Papa would tell me, 'is not a science, but the intuitive art of wooing nature.",
    "author": "W. H. Auden",
    "category": "Art"
  },
  {
    "quote": "I am an anarchist in politics and an impressionist in art as well as a symbolist in literature. Not that I understand what these terms mean, but I take them to be all merely synonyms of pessimist.",
    "author": "Henry Adams",
    "category": "Art"
  },
  {
    "quote": "My trade and art is to live.",
    "author": "Michel de Montaigne",
    "category": "Art"
  },
  {
    "quote": "Rhetoric is the art of ruling the minds of men.",
    "author": "Plato",
    "category": "Art"
  },
  {
    "quote": "The characteristic political attitude of today is not one of positive belief, but of despair.",
    "author": "Herbert Read",
    "category": "Attitude"
  },
  {
    "quote": "My parents have a strong work ethic, but their attitude to life, their philosophy, is: 'whatever makes you happy.'",
    "author": "Sally Hawkins",
    "category": "Attitude"
  },
  {
    "quote": "Not every religion has to have St. Augustine's attitude to sex. Why even in our culture marriages are celebrated in a church, everyone present knows what is going to happen that night, but that doesn't prevent it being a religious ceremony.",
    "author": "Ludwig Wittgenstein",
    "category": "Attitude"
  },
  {
    "quote": "I just try to try to keep an attitude that I don't know what I'm doing. Not to the point where I'm beating myself up, but I just go in thinking that I have a lot to learn. And I hope I still have that attitude 30 years from now.",
    "author": "Tobey Maguire",
    "category": "Attitude"
  },
  {
    "quote": "I'm not anti-fashion, but I've always had a bit of a punk attitude. That's important, I think. I do my own thing.",
    "author": "Sade Adu",
    "category": "Attitude"
  },
  {
    "quote": "Liberalism is an attitude rather than a set of dogmas - an attitude that insists upon questioning all plausible and self-evident propositions, seeking not to reject them but to find out what evidence there is to support them rather than their possible alternatives.",
    "author": "Morris Raphael Cohen",
    "category": "Attitude"
  },
  {
    "quote": "It was just like a dream. I could have ended up with an album that's not all that different from anything else coming out of Nashville. Mutt made the difference. He took these songs, my attitude, my creativity, and colored them in a way that is unique.",
    "author": "Shania Twain",
    "category": "Attitude"
  },
  {
    "quote": "I'm taking a bit of a wait-and-see attitude towards 3D.",
    "author": "Christopher Nolan",
    "category": "Attitude"},
  {
    "quote":
    "Fame can be just so annoying because people are so critical of you. You can't just say, 'hi'. You say hi and people whisper' man did you see the way she said hi? What an attitude.",
    "author": "Juliette Lewis",
    "category": "Attitude"
  },
  {
    "quote":
    "I think failure is nothing more than life's way of nudging you that you are off course. My attitude to failure is not attached to outcome, but in not trying. It is liberating. Most people attach failure to something not working out or how people perceive you. This way, it is about answering to yourself.",
    "author": "Sara Blakely",
    "category": "Attitude"
  },
  {
    "quote": "The way to get things done is not to mind who gets the credit for doing them.",
    "author": "Benjamin Jowett",
    "category": "Business"
  },
  {
    "quote": "I'm glad about what's happening to the music business. This last crop of people we had in the 90s, who are going away now, they didn't like music. They didn't trust musicians. They wanted something else from it.",
    "author": "James Taylor",
    "category": "Business"
  },
  {
    "quote": "If you like a person you say 'let's go into business together.' Man is a social animal after all, but such partnerships are fraught with danger.",
    "author": "Brian Tracy",
    "category": "Business"
  },
  {
    "quote": "In the US, there is basically one party - the business party. It has two factions, called Democrats and Republicans, which are somewhat different but carry out variations on the same policies. By and large, I am opposed to those policies. As is most of the population.",
    "author": "Noam Chomsky",
    "category": "Business"
  },
  {
    "quote": "You can be in this business 50 years and still not know anything about it.",
    "author": "Sammy Davis, Jr.",
    "category": "Business"
  },
  {
    "quote": "I learned you have to fight for yourself in the picture business.",
    "author": "Loretta Young",
    "category": "Business"
  },
  {
    "quote": "I love the man that can smile in trouble, that can gather strength from distress, and grow brave by reflection. 'Tis the business of little minds to shrink, but he whose heart is firm, and whose conscience approves his conduct, will pursue his principles unto death.",
    "author": "Thomas Paine",
    "category": "Business"
  },
  {
    "quote": "If you listen to your fears, you will die never knowing what a great person you might have been.",
    "author": "Robert H. Schuller",
    "category": "Business"
  },
  {
    "quote": "I'm someone who loves to enjoy life and tries to focus on real things and real friendships. That's why I live very simply. I'm a jeans and T-shirt kind of girl. I don't spend much time fixing myself up or trying to look cool. I live like a normal person and even though I'm in a very high-profile business, I really don't let it affect the way I live.",
    "author": "Cameron Diaz",
    "category": "Business"
  },
  {
    "quote": "Jesus picked up twelve men from the bottom ranks of business and forged them into an organisation that conquered the world.",
    "author": "Bruce Barton",
    "category": "Business"
  },
  {
    "quote": "If you set as your goal to roll back the size of government, you have an obligation to answer the tough questions and show real courage, not just appeal to ideology. Treat the voters like adults.",
    "author": "Brian Baird",
    "category": "Courage"
  },
  {
    "quote": "I love the man that can smile in trouble, that can gather strength from distress, and row brave by reflection. 'Tis the business of little minds to shrink but he whose heart is firm, and whose conscience approves his conduct, will pursue his principles unto death.",
    "author": "Paine, Thomas",
    "category": "Courage"
  },
  {
    "quote": "I try to be a truthful artist and I try to show a level of courage. I enjoy that. I'm a messenger.",
    "author": "Jeff Koons",
    "category": "Courage"
  },
  {
    "quote": "To him that waits all things reveal themselves, provided that he has the courage not to deny, in the darkness, what he has seen in the light.",
    "author": "Coventry Patmore",
    "category": "Courage"
  },
  {
    "quote": "We must build dikes of courage to hold back the flood of fear.",
    "author": "Martin Luther King, Jr.",
    "category": "Courage"
  },
  {
    "quote": "Courage is a mean with regard to fear and confidence.",
    "author": "Aristotle",
    "category": "Courage"},
  {
    "quote": "Valor is stability, not of legs and arms, but of courage and the soul.",
    "author": "Michel de Montaigne",
    "category": "Courage"
  },
  {
    "quote": "Today we affirm a new commitment to live out our nation's promise through civility, courage, compassion and character.",
    "author": "George W. Bush",
    "category": "Courage"
  },
  {
    "quote": "Never be discouraged. If I were sunk in the lowest pits of Nova Scotia, with the Rocky Mountains piled on me, I would hang on, exercise faith, and keep up good courage, and I would come out on top.",
    "author": "Joseph Smith, Jr.",
    "category": "Courage"
  },
  {
    "quote": "The only service a friend can really render is to keep up your courage by holding up to you a mirror in which you can see a noble image of yourself.",
    "author": "George Bernard Shaw",
    "category": "Courage"
  },
  {
    "quote": "There is a computer disease that anybody who works with computers knows about. It's a very serious disease and it interferes completely with the work. The trouble with computers is that you 'play' with them!",
    "author": "Richard P. Feynman",
    "category": "Computers"
  },
  {
    "quote": "When they were done downloading all the information off each hard drive, they took all the computers, all the literature, and loaded everything into a big white truck and left.",
    "author": "Sherman Austin",
    "category": "Computers"
  },
  {
    "quote": "I think I thought it would be important for electronics as we knew it then, but that was a much simpler business and electronics was mostly radio and television and the first computers.",
    "author": "Jack Kilby",
    "category": "Computers"
  },
  {
    "quote": "While the recent addition of the National Guard providing a support role manning computers and cameras has allowed more Border Patrol agents to work the field, more agents are still needed.",
    "author": "Timothy Murphy",
    "category": "Computers"
  },
  {
    "quote": "In fact, technology has been the story of human progress from as long back as we know. In 100 years people will look back on now and say, 'That was the Internet Age.' And computers will be seen as a mere ingredient to the Internet Age.",
    "author": "Reed Hastings",
    "category": "Computers"
  },
  {
    "quote": "The trick with computers I think, is to approach old and new things with the same reverence as you would like your favourite chair and not be seduced by the constant innovation otherwise you never do anything.",
    "author": "Colin Greenwood",
    "category": "Computers"
  },
  {
    "quote": "We're entering a new world in which data may be more important than software.",
    "author": "Tim O'Reilly",
    "category": "Computers"
  },
  {
    "quote": "My e-mail address is actually my wife's e-mail address. I actually hate computers.",
    "author": "Joe Sakic",
    "category": "Computers"
  },
  {
    "quote": "Beatbullying's 'The Big March 2012' is such a brilliant campaign and I am very proud to be a part of it. I have been a victim of cyber bullying myself and I know firsthand just how hurtful it can be. People think that they can hide behind computers and send nasty and hurtful comments to people, and this is wrong.",
    "author": "Katherine Jenkins",
    "category": "Computers"
  },
  {
    "quote": "That's what happens nowadays with people working on computers. They can so easily fix things with their mouse and take out all the, 'Oh, somebody coughed in the background we need to take that out' - or somebody hit a bad note. Those are all the best moments.",
    "author": "Jack White",
    "category": "Computers"
  },
  {
    "quote": "Maybe it's a tired tale, but without an education, you're not going to go anywhere.",
    "author": "H. G. Bissinger",
    "category": "Education"
  },
  {
    "quote": "My mom grew up in poverty in Oklahoma - like Dust Bowl, nine people in one room kind of place - and the way she got out of poverty was through education. My dad grew up without a dad, with very little and he also made his way out through education.",
    "author": "Jennifer Garner",
    "category": "Education"
  },
  {
    "quote": "The belief that all genuine education comes about through experience does not mean that all experiences are genuinely or equally educative.",
    "author": "John Dewey",
    "category": "Education"
  },
  {
    "quote":
    "My background was computer science and business school, so eventually I worked my way up where I was running product groups - development, testing, marketing, user education.",
    "author": "Melinda Gates",
    "category": "Education"
  },
  {
    "quote": "I learned more stuff in church than I did in the world.",
    "author": "Al Green",
    "category": "Education"},
  {
    "quote":
    "I pledge to you today that as president, in my first budget, I will introduce the largest increase in special education ever.",
    "author": "Al Gore",
    "category": "Education"
  },
  {
    "quote": "Reformation, like education, is a journey, not a destination.",
    "author": "Mary Harris Jones",
    "category": "Education"
  },
  {
    "quote":
    "Access to books and the encouragement of the habit of reading: these two things are the first and most necessary steps in education and librarians, teachers and parents all over the country know it. It is our children's right and it is also our best hope and their best hope for the future.",
    "author": "Michael Morpurgo",
    "category": "Education"
  },
  {
    "quote": "Sex education has to do with what's in people's head.",
    "author": "Donna Shalala",
    "category": "Education"
  },
  {
    "quote": "The dream doesn't lie in victimization or blame it lies in hard work, determination and a good education.",
    "author": "Alphonso Jackson",
    "category": "Education"
  },
  {
    "quote": "Stay true to yourself. An original is worth  more than a copy.",
    "author": "Suzy Kassem",
    "category": "Honesty"
  },
  {
    "quote": "If you want to be succesful in life, respect one rule: never lie to yourself.",
    "author": "Paulo Coelho",
    "category": "Honesty"
  },
  {
    "quote": "Everything you say should be true, but not everything true should be said.",
    "author": "Voltaire",
    "category": "Honesty"
  },
  {
    "quote": "Being honest with yourself is the highest form of self-respect. If you're not feeling something, don't do it.",
    "author": "DailyZen",
    "category": "Honesty"
  },
  {
    "quote": "Speak the truth or at least don't lie.",
    "author": "Jordan Peterson",
    "category": "Honesty"
  },
  {
    "quote": "When you have confidence, you can do anything.",
    "author": "Sloane Stevens",
    "category": "Success"
  },
  {
    "quote": "I have nothing in common with lazy people who blame others for their lack of success.",
    "author": "Kobe Bryant",
    "category": "Success"
  },
  {
    "quote": "Don't be afraid of failure. This is the way to succeed.",
    "author": "LeBron James",
    "category": "Success"
  },
  {
    "quote": "Don't fail to try because this is how winners roll.",
    "author": "Auliq Ice",
    "category": "Success"
  },
  {
    "quote": "It's never a failure if you learn something from it.",
    "author": "Ashley Hetherington",
    "category": "Success"
  },
  {
    "quote": "Take a leap of faith right now and know that you can live the life of your dreams by making a positive decision.",
    "author": "Auliq Ice",
    "category": "Success"
  },
  {
    "quote": "The secret of success is constancy of purpose.",
    "author": "Benjamin Disraeli",
    "category": "Success"
  },
  {
    "quote": "Be fearless in the pursuit of what sets your soul on fire.",
    "author": "Jennifer Lee",
    "category": "Passion"
  },
  {
    "quote": "Believe in your heart that you're meant to live a life full of passion, purpose, magic and miracles.",
    "author": "Roy Bennett",
    "category": "Passion"
  },
  {
    "quote": "Motivation is a fire from within. If someone else tries to light that fire under you, chances are it will burn very briefly.",
    "author": "Stephen R. Covey",
    "category": "Passion"
  },
  {
    "quote": "True passion attracts. If you have passion in your business, the right people will be attracted to your team.",
    "author": "Robert T. Kiyosaki",
    "category": "Passion"
  },
  {
    "quote": "You have to have a passion for your work. How can we expect people to be passionate if you, as their coach, does not have a passion?",
    "author": "Catherine Pulsifer",
    "category": "Passion"
  },
  {
    "quote": "Purpose may point you in the right direction but it's passion that propels you.",
    "author": "Travis McAshan",
    "category": "Passion"
  },
  {
    "quote": "Passion is the genesis of genius.",
    "author": "Anthony Robbins",
    "category": "Passion"
  },
  {
    "quote": "It is only the great hearted who can be true friends. The mean and cowardly, can never know what true friendship means.",
    "author": "Charles Kingsley",
    "category": "Loyalty"
  },
  {
    "quote": "I can't expect loyalty from the army if I do not give it.l",
    "author": "George C. Marshal",
    "category": "Loyalty"
  },
  {
    "quote": "Where the battle rages, there the loyalty of the soldier is proved.",
    "author": "Martin Luther King",
    "category": "Loyalty"
  },
  {
    "quote": "Loyalty that is bought with money, may be overcome by money.",
    "author": "Seneca",
    "category": "Loyalty"
  },
  {
    "quote": "You give loyalty, you'll get it back. You give love, you'll get it back.",
    "author": "Tommy Lasorda",
    "category": "Loyalty"
  },
  {
    "quote": "I'm not a big fan of having my loyalty called into question.",
    "author": "Chris Eigeman",
    "category": "Loyalty"
  },
  {
    "quote": "Loyalty is what we seek in friendship.",
    "author": "Marcus Tullius Cicero",
    "category": "Loyalty"
  },
  {
    "quote": "There is no friend as loyal as a book.",
    "author": "Ernest Hemingway",
    "category": "Loyalty"
  },
  {
    "quote": "There is no friend as loyal as a book.",
    "author": "Ernest Hemingway",
    "category": "Loyalty"
  },
  {
    "quote": "We are all in the same boat, in a stormy sea, and we owe each other a terrible loyalty.",
    "author": "G.K. Chesterton",
    "category": "Loyalty"
  },
  {
    "quote": "The whole point of loyalty was not to change: stick with those who stuck with you.",
    "author": "Larry McMurtry",
    "category": ""
  },
  // {
  //   "quote": "",
  //   "author": "",
  //   "category": ""
  // },
];

List<Quote> allQuote = allQuoteData
    .map(
        (e) => Quote.fromMap(data: e)
    )
    .toList();

List allCategories = allQuote.map((e) => e.category).toSet().toList();