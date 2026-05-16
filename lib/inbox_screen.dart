import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  InboxScreen({super.key});

  final List<Map<String, String>> messages = [
    {
      "sender": "Binance",
      "title": "Binance Support: New Message in...",
      "subtitle": "Binance Support: New Message in Ch...",
      "time": "19:41",
      "body":
      "Hi there,\n\nThanks for contacting Binance Support.\n\nYou have a new message in your existing case. Please log in to your account and respond to the case.\n\nCase ID: 123456789\n\nBest regards,\nBinance Support Team",
    },
    {
      "sender": "Binance",
      "title": "[Binanc...] New Device or IP Login...",
      "subtitle": "New Device or IP Login Detected on Y...",
      "time": "May 13",
      "body":
      "We detected a new device login on your Binance account.\n\nIf this wasn't you, please secure your account immediately.",
    },
    {
      "sender": "Binance",
      "title": "Verification Required",
      "subtitle": "Please complete your account verific...",
      "time": "May 13",
      "body":
      "Your identity verification is still pending.\n\nPlease upload required documents to continue.",
    },
    {
      "sender": "Binance",
      "title": "Verification Required",
      "subtitle": "Please complete your account verific...",
      "time": "May 13",
      "body":
      "Your identity verification is still pending.\n\nPlease upload required documents to continue.",
    },
    {
      "sender": "Binance",
      "title": "[Binanc...] New Device or IP Login...",
      "subtitle": "New Device or IP Login Detected on Y...",
      "time": "May 13",
      "body":
      "We detected a new device login on your Binance account.\n\nIf this wasn't you, please secure your account immediately.",
    },
    {
      "sender": "Binance",
      "title": "Verification Required",
      "subtitle": "Please complete your account verific...",
      "time": "May 13",
      "body":
      "Your identity verification is still pending.\n\nPlease upload required documents to continue.",
    },
    {
      "sender": "Binance",
      "title": "Binance Support: New Message in...",
      "subtitle": "Binance Support: New Message in Ch...",
      "time": "19:41",
      "body":
      "Hi there,\n\nThanks for contacting Binance Support.\n\nYou have a new message in your existing case. Please log in to your account and respond to the case.\n\nCase ID: 123456789\n\nBest regards,\nBinance Support Team",
    },
    {
      "sender": "Binance",
      "title": "Verification Required",
      "subtitle": "Please complete your account verific...",
      "time": "May 13",
      "body":
      "Your identity verification is still pending.\n\nPlease upload required documents to continue.",
    },
    {
      "sender": "Binance",
      "title": "Verification Required",
      "subtitle": "Please complete your account verific...",
      "time": "May 13",
      "body":
      "Your identity verification is still pending.\n\nPlease upload required documents to continue.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F4F8),

      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 8),

            // TOP BAR
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  const Icon(Icons.menu, size: 26),

                  const SizedBox(width: 14),

                  Expanded(
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          "Search in mail",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 14),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff5d3f37),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Center(
                      child: Text("A",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

             Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Primary",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),

            const SizedBox(height: 10),

            // MESSAGE LIST
            ...List.generate(messages.length, (index) {
              final msg = messages[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MessageDetailScreen(
                        data: msg,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 23,
                        backgroundColor:
                        const Color(0xffC86DD7),
                        child: Text(
                          msg["sender"]![0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    msg["sender"]!,
                                    style: const TextStyle(
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),

                                Text(
                                  msg["time"]!,
                                  style: const TextStyle(
                                    fontWeight:
                                    FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5,),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.black,
                                )
                              ],
                            ),

                            Text(
                              msg["title"]!,
                              maxLines: 1,
                              overflow:
                              TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontWeight:
                                FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),

                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Text(
                                    msg["subtitle"]!,
                                    maxLines: 1,
                                    overflow:
                                    TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Icon(Icons.star_border_outlined,color: Colors.black,)

                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

class MessageDetailScreen extends StatelessWidget {
  final Map<String, String> data;

  const MessageDetailScreen({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F4F8),

      body: SafeArea(
        child: Column(
          children: [
            // TOP ACTION BAR
            Padding(
              padding: const EdgeInsets.only(
                left: 14,
                right: 10,
                top: 8,
                bottom: 6,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 27,
                      color: Colors.black87,
                    ),
                  ),

                  const Spacer(),

                  const Icon(
                    Icons.archive_outlined,
                    size: 25,
                    color: Colors.black87,
                  ),

                  const SizedBox(width: 18),

                  const Icon(
                    Icons.delete_outline_outlined,
                    size: 25,
                    color: Colors.black87,
                  ),

                  const SizedBox(width: 18),

                  const Icon(
                    Icons.mail_outline,
                    size: 25,
                    color: Colors.black87,
                  ),

                  const SizedBox(width: 14),

                  const Icon(
                    Icons.more_vert,
                    size: 25,
                    color: Colors.black87,
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),

                      // SUBJECT
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              data["title"]!,
                              style: const TextStyle(
                                fontSize: 19,
                                height: 1.28,
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          const SizedBox(width: 10),

                          const Padding(
                            padding: EdgeInsets.only(top: 2),
                            child: Icon(
                              Icons.star_border,
                              size: 25,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // INBOX TAG
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          borderRadius:
                          BorderRadius.circular(5),
                        ),
                        child: const Text(
                          "Inbox",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                      const SizedBox(height: 22),

                      // PROFILE SECTION
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 24,
                            backgroundColor:
                            const Color(0xffC86DD7),
                            child: Text(
                              data["sender"]![0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      data["sender"]!,
                                      style:
                                      const TextStyle(
                                        fontSize: 17,
                                        fontWeight:
                                        FontWeight.w500,
                                        color:
                                        Colors.black87,
                                      ),
                                    ),

                                    const SizedBox(width: 6),

                                    Text(
                                      data["time"]!,
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors
                                            .grey.shade600,
                                      ),
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 1),

                                Row(
                                  children: [
                                    const Text(
                                      "to me",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                        Colors.black54,
                                      ),
                                    ),

                                    Icon(
                                      Icons
                                          .keyboard_arrow_down,
                                      size: 18,
                                      color: Colors
                                          .grey.shade600,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          const Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Icon(
                              Icons.reply,
                              size: 21,
                              color: Colors.black54,
                            ),
                          ),

                          const SizedBox(width: 14),

                          const Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Icon(
                              Icons.more_vert,
                              size: 21,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 22),

                      // TRANSLATE BAR
                      Container(
                        width: double.infinity,
                        padding:
                        const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        color: const Color(0xffF1F3F4),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.translate,
                              size: 21,
                              color: Colors.black54,
                            ),

                            const SizedBox(width: 12),

                            const Expanded(
                              child: Text(
                                "Translate to English",
                                style: TextStyle(
                                  fontSize: 15,
                                  color:
                                  Color(0xff1A73E8),
                                  fontWeight:
                                  FontWeight.w500,
                                ),
                              ),
                            ),

                            const Icon(
                              Icons.close,
                              size: 20,
                              color: Colors.black54,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 28),

                      // MESSAGE BODY
                      const Text(
                        "#- Please type your reply above this line -#",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          height: 1.4,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Text(
                        data["body"]!,
                        style: const TextStyle(
                          fontSize: 17,
                          height: 1.75,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(height: 26),

                      Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                      ),

                      const SizedBox(height: 24),

                      // ACTION BUTTONS
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                        children: [
                          _actionButton(
                            icon: Icons.reply,
                            text: "Reply",
                          ),

                          _actionButton(
                            icon: Icons.reply_all,
                            text: "Reply all",
                          ),

                          _actionButton(
                            icon: Icons.forward,
                            text: "Forward",
                          ),
                          Container(
                            padding: EdgeInsets.all(10),

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: Colors.grey.shade400,
                              ),
                            ),
                            child: Icon(
                              Icons.emoji_emotions_outlined,
                              size: 18,
                              color: Colors.black54,
                            ),
                          )


                        ],
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButton({
    required IconData icon,
    required String text,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: Colors.black54,
          ),

          const SizedBox(width: 7),

          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}