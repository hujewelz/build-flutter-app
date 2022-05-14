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
  ),
  Tweet(
    user: User(
      name: 'Swift Language',
      account: '@SwiftLang',
      imageUrl:
          'https://pbs.twimg.com/profile_images/1336716675287113728/woTnm-UB_400x400.jpg',
    ),
    timeAgo: 'Apr 26',
    content:
        'The Swift Server Working Group has published their annual update, recapping the progress of the Swift on Server ecosystem in 2021 and looking forward to 2022.',
    post: LinkedPost(
        logo:
            'https://pbs.twimg.com/profile_images/1336716675287113728/woTnm-UB_400x400.jpg',
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
      imageUrl:
          'https://pbs.twimg.com/profile_images/1336716675287113728/woTnm-UB_400x400.jpg',
    ),
    timeAgo: 'Apr 5',
    content:
        'My students asked me: how low does the price of Bitcoin have to go before “crypto” means cryptography again?',
    post: LinkedPost(
        logo:
            'https://pbs.twimg.com/profile_images/1336716675287113728/woTnm-UB_400x400.jpg',
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
      imageUrl:
          'https://pbs.twimg.com/profile_images/2392473363/v7txhrjp9pdqrkdtxxp0_400x400.png',
    ),
    timeAgo: 'May 20,2020',
    content: 'Read this thread for information about this account!',
  ),
  Tweet(
    user: User(
      name: 'Rust Language',
      account: '@rustlang',
      imageUrl:
          'https://pbs.twimg.com/profile_images/2392473363/v7txhrjp9pdqrkdtxxp0_400x400.png',
    ),
    timeAgo: '11h',
    content:
        'A malicious crate was uploaded to http://crates.io, targeting GitLab CI environments. Read more on the security advisory:',
    post: LinkedPost(
        logo:
            'https://pbs.twimg.com/profile_images/2392473363/v7txhrjp9pdqrkdtxxp0_400x400.png',
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
      imageUrl:
          'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80',
    ),
    timeAgo: '4h',
    content:
        "😩 learning today that Firefox has had MathML support for 11 years (16 years with an older syntax), Safari has had it for 6 years (14 years with bad handling for edge cases), and Chrome still doesn't support it",
  ),
];
