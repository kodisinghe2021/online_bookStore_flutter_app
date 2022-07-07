import 'package:book_store_app/models/book_model.dart';
import 'package:flutter/material.dart';

class BooksProvider with ChangeNotifier {
  // list of Book type data, variavle is private and assign empty value
  List<BookModel> _books = [
    BookModel(
        bookID: 01,
        bookName: "The Everyday Hero Manifesto",
        description:
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL:
            "https://jumpbooks.lk/onojyglu/2022/04/The-Everyday-Hero-Manifesto.jpeg",
        price: 1990.00,
        isFavourite: false),
    BookModel(
        bookID: 02,
        bookName: "Will",
        description:
            "“It’s the best memoir I’ve ever read.” —Oprah Winfrey “Will Smith isn’t holding back in his bravely inspiring new memoir . . . An ultimately heartwarming read, Will provides a humane glimpse of the man behind the actor, producer and musician, as he bares all his insecurities and trauma.” —USA Today"
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Will.jpeg",
        price: 3790.00,
        isFavourite: false),
    BookModel(
        bookID: 03,
        bookName: "Bhagavad Gita",
        description:
            "The epochal Indian classic brimming with eternal wisdom, needs no introduction. Set in the narrative framework of a discourse between the Supreme Lord Krishna and his disciple Arjun on the verge of the Mahabharat war, it is a comprehensive and easy-to-understand summary of Vedic philosophy.Frozen in inaction, Arjun turns to Krishna for succour. Lord Krishna goes beyond his immediate dilemma to give Arjun a profound discourse on the philosophy of life. He encapsulates the essence of spirituality and virtues like courage, honour, death, and love in it.For any advice to be useful, it must address two aspects—theory and practice.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Bhagavad-Gita.jpeg",
        price: 4290.00,
        isFavourite: false),
    BookModel(
        bookID: 04,
        bookName: "Never Give Up: A Life of Adventure",
        description:
            "In Never Give Up, global adventurer, Chief Scout and TV presenter Bear Grylls immerses readers in some truly remarkable adventures. As Bear shares personal stories from his toughest expeditions, this inspiring autobiography captures the exhilarating reality behind some of his hairiest survival missions. In this eagerly awaited follow up to his Number One bestseller Mud, Sweat and Tears, Bear takes readers behind the scenes on ‘Man vs. Wild’, the series that spawned an entire adventure industry. He also provides a unique and revealing insight into what it’s really like to go ‘Running Wild’ with guests including President Obama, Roger Federer and Julia Roberts, to name but a few of his global superstar guests.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Never-Give-Up-2.jpeg",
        price: 3790.00,
        isFavourite: false),
    BookModel(
        bookID: 01,
        bookName: "The Everyday Hero Manifesto",
        description:
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL:
            "https://jumpbooks.lk/onojyglu/2022/04/The-Everyday-Hero-Manifesto.jpeg",
        price: 1990.00,
        isFavourite: false),
    BookModel(
        bookID: 02,
        bookName: "Will",
        description:
            "“It’s the best memoir I’ve ever read.” —Oprah Winfrey “Will Smith isn’t holding back in his bravely inspiring new memoir . . . An ultimately heartwarming read, Will provides a humane glimpse of the man behind the actor, producer and musician, as he bares all his insecurities and trauma.” —USA Today"
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Will.jpeg",
        price: 3790.00,
        isFavourite: false),
    BookModel(
        bookID: 03,
        bookName: "Bhagavad Gita",
        description:
            "The epochal Indian classic brimming with eternal wisdom, needs no introduction. Set in the narrative framework of a discourse between the Supreme Lord Krishna and his disciple Arjun on the verge of the Mahabharat war, it is a comprehensive and easy-to-understand summary of Vedic philosophy.Frozen in inaction, Arjun turns to Krishna for succour. Lord Krishna goes beyond his immediate dilemma to give Arjun a profound discourse on the philosophy of life. He encapsulates the essence of spirituality and virtues like courage, honour, death, and love in it.For any advice to be useful, it must address two aspects—theory and practice.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Bhagavad-Gita.jpeg",
        price: 4290.00,
        isFavourite: false),
    BookModel(
        bookID: 04,
        bookName: "Never Give Up: A Life of Adventure",
        description:
            "In Never Give Up, global adventurer, Chief Scout and TV presenter Bear Grylls immerses readers in some truly remarkable adventures. As Bear shares personal stories from his toughest expeditions, this inspiring autobiography captures the exhilarating reality behind some of his hairiest survival missions. In this eagerly awaited follow up to his Number One bestseller Mud, Sweat and Tears, Bear takes readers behind the scenes on ‘Man vs. Wild’, the series that spawned an entire adventure industry. He also provides a unique and revealing insight into what it’s really like to go ‘Running Wild’ with guests including President Obama, Roger Federer and Julia Roberts, to name but a few of his global superstar guests.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Never-Give-Up-2.jpeg",
        price: 3790.00,
        isFavourite: false),
    BookModel(
        bookID: 01,
        bookName: "The Everyday Hero Manifesto",
        description:
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL:
            "https://jumpbooks.lk/onojyglu/2022/04/The-Everyday-Hero-Manifesto.jpeg",
        price: 1990.00,
        isFavourite: false),
    BookModel(
        bookID: 02,
        bookName: "Will",
        description:
            "“It’s the best memoir I’ve ever read.” —Oprah Winfrey “Will Smith isn’t holding back in his bravely inspiring new memoir . . . An ultimately heartwarming read, Will provides a humane glimpse of the man behind the actor, producer and musician, as he bares all his insecurities and trauma.” —USA Today"
            "For over twenty-five years, leadership legend and personal-mastery path-blazer Robin Sharma has mentored billionaires, business titans, professional-sports superstars and entertainment royalty via a revolutionary methodology that led them to accomplish rare-air results. Now, in this groundbreaking book, Sharma makes his transformational system available to anyone who is ready for undefeatable positivity, monumental productivity, deep spiritual freedom and a life of helping others.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Will.jpeg",
        price: 3790.00,
        isFavourite: false),
    BookModel(
        bookID: 03,
        bookName: "Bhagavad Gita",
        description:
            "The epochal Indian classic brimming with eternal wisdom, needs no introduction. Set in the narrative framework of a discourse between the Supreme Lord Krishna and his disciple Arjun on the verge of the Mahabharat war, it is a comprehensive and easy-to-understand summary of Vedic philosophy.Frozen in inaction, Arjun turns to Krishna for succour. Lord Krishna goes beyond his immediate dilemma to give Arjun a profound discourse on the philosophy of life. He encapsulates the essence of spirituality and virtues like courage, honour, death, and love in it.For any advice to be useful, it must address two aspects—theory and practice.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Bhagavad-Gita.jpeg",
        price: 4290.00,
        isFavourite: false),
    BookModel(
        bookID: 04,
        bookName: "Never Give Up: A Life of Adventure",
        description:
            "In Never Give Up, global adventurer, Chief Scout and TV presenter Bear Grylls immerses readers in some truly remarkable adventures. As Bear shares personal stories from his toughest expeditions, this inspiring autobiography captures the exhilarating reality behind some of his hairiest survival missions. In this eagerly awaited follow up to his Number One bestseller Mud, Sweat and Tears, Bear takes readers behind the scenes on ‘Man vs. Wild’, the series that spawned an entire adventure industry. He also provides a unique and revealing insight into what it’s really like to go ‘Running Wild’ with guests including President Obama, Roger Federer and Julia Roberts, to name but a few of his global superstar guests.",
        imageURL: "https://jumpbooks.lk/onojyglu/2022/04/Never-Give-Up-2.jpeg",
        price: 3790.00,
        isFavourite: false),
  ];

// this is getter for accessing to the _books private variable.
  List<BookModel> get getBooks {
    // return type is Book. ... this will be send only copy of this variable to the reqested places
    return [..._books];
  }

// this function for add book from Book type. must pass Book type variable
  void addBook(BookModel book) {
    _books.add(book);
    notifyListeners();
  }
}
