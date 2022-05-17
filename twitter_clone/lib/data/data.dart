import 'package:twitter_clone/models/tweet.dart';
import 'package:twitter_clone/models/user.dart';

final List<Tweet> tweets = [
  Tweet(
    user: User(
      name: 'Flutter',
      account: '@FlutterDev',
      imageUrl:
          'https://docs.flutter.dev/assets/images/shared/brand/flutter/icon/64.png',
    ),
    timeAgo: '12h',
    content:
        '😍Be in the know after GoogleIO\n\n🚀Flutter 3\n✅The Flutter Casual Games Toolkit\n🔥@Firebase Crashlytics',
    replays: 100,
    retweets: 45,
    likes: 34,
  ),
  Tweet(
    user: User(
      name: 'Swift Language',
      account: '@SwiftLang',
      imageUrl: 'https://s2.loli.net/2022/05/14/T9DH7tx86A3azsP.png',
    ),
    timeAgo: 'Apr 26',
    replays: 333,
    retweets: 33,
    likes: 67,
    content:
        'The Swift Server Working Group has published their annual update, recapping the progress of the Swift on Server ecosystem in 2021 and looking forward to 2022.',
    post: LinkedPost(
        logo: 'https://s2.loli.net/2022/05/14/T9DH7tx86A3azsP.png',
        title: 'SSWG 2021 Annual Update',
        from: 'swift.org',
        content:
            'Since the last update from the SSWG, the Swift on Server ecosystem has continued to grow and expand.',
        link: 'https://www.swift.org/blog/sswg-update/'),
  ),
  Tweet(
    user: User(
      name: 'Swift Language',
      account: '@SwiftLang',
      imageUrl: 'https://s2.loli.net/2022/05/14/T9DH7tx86A3azsP.png',
    ),
    timeAgo: 'Apr 5',
    replays: 245,
    retweets: 56,
    likes: 33,
    content:
        'My students asked me: how low does the price of Bitcoin have to go before “crypto” means cryptography again?',
    post: LinkedPost(
        logo: 'https://s2.loli.net/2022/05/14/T9DH7tx86A3azsP.png',
        title: 'Swift to participate in GSoC 2022!',
        from: 'forums.swift.org',
        content:
            "Hi everyone, we're now accepting proposals throught the summer of code website! Please don't be shy",
        link:
            'https://forums.swift.org/t/swift-to-participate-in-gsoc-2022/55820/3'),
  ),
  Tweet(
    user: User(
      name: 'Rust Language',
      account: '@rustlang',
      imageUrl: 'https://s2.loli.net/2022/05/14/5H4JrVSbXREfL1O.png',
    ),
    timeAgo: 'May 20,2020',
    content: 'Read this thread for information about this account!',
  ),
  Tweet(
    user: User(
      name: 'Rust Language',
      account: '@rustlang',
      imageUrl: 'https://s2.loli.net/2022/05/14/5H4JrVSbXREfL1O.png',
    ),
    timeAgo: '11h',
    replays: 157,
    retweets: 345,
    likes: 67,
    content:
        'A malicious crate was uploaded to http://crates.io, targeting GitLab CI environments. Read more on the security advisory:',
    post: LinkedPost(
        logo: 'https://s2.loli.net/2022/05/14/5H4JrVSbXREfL1O.png',
        title: 'Security advisory: malicious crate rustdecimal',
        from: 'blog.rust-lang.org',
        content:
            "The Rust Security Response WG and the crates.io team were notified on 2022-05-02 of the existence of the malicious crate rustdecimal, which contained malware. ",
        link:
            'https://blog.rust-lang.org/2022/05/10/malicious-crate-rustdecimal.html'),
  ),
  Tweet(
    user: User(
      name: 'cassie',
      account: '@porglezomp',
      imageUrl: 'https://s2.loli.net/2022/05/14/Atd3nF5cMJeZVBH.jpg',
    ),
    timeAgo: '4h',
    replays: 123,
    retweets: 56,
    likes: 100,
    content:
        "😩 learning today that Firefox has had MathML support for 11 years (16 years with an older syntax), Safari has had it for 6 years (14 years with bad handling for edge cases), and Chrome still doesn't support it",
  ),
];

final List<Tweet> replays = [
  Tweet(
    user: User(
      name: 'Dimasya',
      account: '@satanworker',
      imageUrl:
          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.woyaogexing.com%2F2019%2F02%2F13%2F02a07217f4d842e48bd30e2700007434%21400x400.jpeg&refer=http%3A%2F%2Fimg2.woyaogexing.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1655361438&t=20b0d95666324dd208d85b3021e86e67',
    ),
    timeAgo: 'Apr 26',
    content:
        'Now when swift has nice concurrency system, the only thing missing for me is ORM. Curious is it possible to implement bindings for @prisma similar to go package',
    replays: 10,
    retweets: 4,
    likes: 3,
  ),
  Tweet(
    user: User(
      name: 'Tim Condon',
      account: '@OxTim',
      imageUrl:
          'https://img2.baidu.com/it/u=3076855988,592275785&fm=253&fmt=auto&app=120&f=JPEG?w=400&h=400',
    ),
    timeAgo: 'Apr 26',
    content: 'Have you had a look at Fluent from Vapor?',
    replays: 1,
    likes: 1,
  ),
  Tweet(
    user: User(
      name: 'Dorian',
      account: '@MrSkwiggs',
      imageUrl:
          'https://img1.baidu.com/it/u=1149359842,3831784241&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400',
    ),
    timeAgo: 'Apr 28',
    content:
        "Sweet stuff! Although it seems like the 'pitch a draft to the SSWG' link is not really doing much 🤔",
  ),
  Tweet(
    user: User(
      name: 'Branko Grbic',
      account: '@bbgrbic',
      imageUrl:
          'https://img1.baidu.com/it/u=1755419550,3333940379&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500',
    ),
    timeAgo: 'Apr 30',
    content:
        "it's nice to have this feature in structured  concurrency, what we already use in reactive combine 😀",
  ),
  Tweet(
    user: User(
      name: 'mortenditlevsen',
      account: '@mortenditlevsen',
      imageUrl:
          'https://img2.baidu.com/it/u=3350630607,1397825411&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=400',
    ),
    timeAgo: 'Apr 30',
    content: "This is awesome!!!",
  ),
];
