import '../models/quote_model.dart';

List<Map> allQuoteData = [
  {
    "quote": "It is good people who make good places.",
    "author": "Anna Sewell",
    "category": "Attitude"
  },
  {
    "quote": "We lost because we told ourselves we lost.",
    "author": "Leo Tolstoy",
    "category": "Attitude"
  },
  {
    "quote": "You cannot have a positive life and a negative mind.",
    "author": "Joyce Meyer",
    "category": "Attitude"
  },
  {
    "quote": "Keep your face to the sunshine and you cannot see a shadow.",
    "author": "Helen Keller",
    "category": "Attitude"
  },
  {
    "quote": "Your problem isn’t the problem, it’s your attitude about the problem.",
    "author": "Ann Brashares",
    "category": "Attitude"
  },
  {
    "quote": "I don’t like that man. I must get to know him better.",
    "author": "Abraham Lincoln",
    "category": "Attitude"
  },
  {
    "quote": "An optimist is the human personification of spring.",
    "author": "Susan J. Bissonette",
    "category": "Attitude"
  },
  {
    "quote": "Life is 10% what happens to me and 90% of how I react to it.",
    "author": "John C. Maxwell",
    "category": "Attitude"
  },
  {
    "quote": "Never whine, never complain, never try to justify yourself.",
    "author": "Robert Greene",
    "category": "Attitude"
  },
  {
    "quote": "You really can change the world if you care enough.",
    "author": "Marian Wright Edelman",
    "category": "Attitude"
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
    "quote": "Honesty is the first chapter in the book of wisdom.",
    "author": "Thomas Jefferson",
    "category": "Honesty"
  },
  {
    "quote": "Irony is just honesty with the volume cranked upIrony is just honesty with the volume cranked up. George Saunders.",
    "author": "George saunders",
    "category": "Honesty"
  },
  {
    "quote": "There's just some magic in truth and honesty and openness.",
    "author": "Frank Ocean",
    "category": "Honesty"
  },
  {
    "quote": "Relationships feed on credibility, honesty, and consistency",
    "author": "Scott Borchetta",
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
    "category": "Loyalty"
  },
  {
    "quote": "Never above you. Never below you. Always beside you.",
    "author": "Walter Winchell",
    "category": "Love"
  },
  {
    "quote": "Falling in love consists merely in uncorking the imagination and bottling the common sense.",
    "author": "Helen Rowland",
    "category": "Love"
  },
  {
    "quote": "In all the world, there is no love for you like mine.",
    "author": "Maya Angelou",
    "category": "Love"
  },
  {
    "quote": "I will love you my whole life. You and no other.",
    "author": "Braveheart",
    "category": "Love"
  },
  {
    "quote": "All that you are is all that I'll ever need.",
    "author": "Ed Sheeran",
    "category": "Love"
  },
  {
    "quote": "I love you right up to the moon — and back.",
    "author": "Sam McBratney",
    "category": "Love"
  },
  {
    "quote": "You never lose by loving. You always lose by holding back.",
    "author": "Barbara De Angelis",
    "category": "Love"
  },
  {
    "quote": "You are my sun, my moon, and all my stars.",
    "author": "E. E. Cummings",
    "category": "Love"
  },
  {
    "quote": "There is no joy without gratitude.",
    "author": "Brené Brown",
    "category": "Gratitude"
  },
  {
    "quote": "You have no cause for anything but gratitude and joy.",
    "author": "Buddha",
    "category": "Gratitude"
  },
  {
    "quote": "The struggle ends when gratitude begins.",
    "author": "Neale Donald Walsch",
    "category": "Gratitude"
  },
  {
    "quote": "A grateful mind is a great mind which eventually attracts to itself great things.",
    "author": "Plato",
    "category": "Gratitude"
  },
  {
    "quote": "There is always something to be thankful for. So let gratitude be an attitude.",
    "author": "Rubyanne",
    "category": "Gratitude"
  },
  {
    "quote": "Gratitude paints little smiley faces on everything it touches.",
    "author": "Richelle E. Goodrich",
    "category": "Gratitude"
  },
  {
    "quote": "Enjoy the little things, for one day you may look back and realize they were the big things.",
    "author": "Robert Brault",
    "category": "Gratitude"
  },
  {
    "quote": "Gratitude highlights the good in what is.",
    "author": "Richelle E. Goodrich",
    "category": "Gratitude"
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

List allCategories = allQuoteData.map((e) => e["category"]).toSet().toList();