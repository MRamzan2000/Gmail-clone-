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
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,

      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 75, right: 0),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 4),
            ),
          ],
        ),

        child: FloatingActionButton.extended(
          onPressed: () {},

          backgroundColor: const Color(0xffd5e2fd),
          elevation: 0,

          extendedPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 0,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),

          icon: const Icon(Icons.edit, color: Colors.black87, size: 22),

          label: const Text(
            "Compose",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffF6F4F8),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 8),

                  // TOP BAR
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        const Icon(Icons.menu, size: 28),

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
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Center(
                            child: Text(
                              "A",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
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
                        fontWeight: FontWeight.w500,
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
                            builder: (_) => MessageDetailScreen(data: msg),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: const Color(0xffC86DD7),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          msg["sender"]!,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),

                                      Text(
                                        msg["time"]!,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.black,
                                      ),
                                    ],
                                  ),

                                  Text(
                                    msg["title"]!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          msg["subtitle"]!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.black54,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.black,
                                      ),
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
            Container(
              color: const Color(0xFFe8e7ef),
              padding: const EdgeInsets.fromLTRB(32, 10, 32, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Mail icon with red badge
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 64,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFF6d7487),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      Positioned(
                        top: -3,
                        right: 3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff8a030b),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "57",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),

                  // Video camera icon
                  Image.asset("assets/videos.png", height: 32, width: 32),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageDetailScreen extends StatefulWidget {
  final Map<String, String> data;

  const MessageDetailScreen({super.key, required this.data});

  @override
  State<MessageDetailScreen> createState() => _MessageDetailScreenState();
}

class _MessageDetailScreenState extends State<MessageDetailScreen> {
  bool _isDetailsExpanded = false;   // ← Ye state manage karega

  @override
  Widget build(BuildContext context) {
    final String senderInitial = widget.data["sender"]?.isNotEmpty == true
        ? widget.data["sender"]![0].toUpperCase()
        : "G";

    return Scaffold(
      backgroundColor: const Color(0xFFF0EEF4),
      body: SafeArea(
        child: Column(
          children: [
            // Top Action Bar (same rakha hai)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, size: 26, color: Color(0xFF1C1B1F)),
                  ),
                  const Spacer(),
                  Image.asset("assets/download.png", height: 28, width: 28),
                  const SizedBox(width: 18),
                  Image.asset("assets/delete.png", height: 28, width: 28),
                  const SizedBox(width: 18),
                  const Icon(Icons.mark_email_unread_outlined, size: 26, color: Color(0xFF1C1B1F)),
                  const SizedBox(width: 18),
                  const Icon(Icons.more_vert, size: 26, color: Color(0xFF1C1B1F)),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),

                      // Subject + Star
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.data["title"] ?? "No Subject",
                              style: const TextStyle(fontSize: 20, height: 1.25, fontWeight: FontWeight.w500, color: Color(0xFF1C1B1F)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.star_border, size: 26, color: Color(0xFF49454F)),
                        ],
                      ),

                      const SizedBox(height: 10),

                      // Inbox Tag
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5d73a9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text("Inbox", style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                      ),

                      const SizedBox(height: 20),

                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff9f8fe),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),

                            // Sender Row + Clickable "to me" Section
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _isDetailsExpanded = !_isDetailsExpanded;
                                  });
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: const Color(0xFF26A69A),
                                      child: Text(senderInitial, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500)),
                                    ),
                                    const SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                widget.data["sender"] ?? "Unknown",
                                                style: const TextStyle(fontSize: 15.5, fontWeight: FontWeight.w500, color: Color(0xFF1C1B1F)),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                widget.data["time"] ?? "",
                                                style: const TextStyle(fontSize: 13, color: Color(0xFF79747E)),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 2),
                                          Row(
                                            children: [
                                              const Text(
                                                "to me",
                                                style: TextStyle(fontSize: 13.5, color: Color(0xFF49454F)),
                                              ),
                                              Icon(
                                                _isDetailsExpanded
                                                    ? Icons.keyboard_arrow_down
                                                    : Icons.keyboard_arrow_up,
                                                size: 16,
                                                color: const Color(0xFF49454F),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    // Action icons
                                    Image.asset("assets/emoji.png", height: 28, width: 28),
                                    const SizedBox(width: 14),
                                    Image.asset("assets/reply.png", height: 28, width: 28),
                                    const SizedBox(width: 14),
                                    const Icon(Icons.more_horiz_outlined, size: 26, color: Color(0xFF5F6368)),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            // Email Info Card (Toggleable)
                            if (_isDetailsExpanded)
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                                decoration: BoxDecoration(
                                  color: Color(0xffeeedf3),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _infoRow("From", widget.data["from"] ?? "noreply@example.com"),
                                    const SizedBox(height: 8),
                                    _infoRow("To", widget.data["email"] ?? "user@gmail.com"),
                                    const SizedBox(height: 8),
                                    _infoRow("Date", widget.data["date"] ?? ""),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: const [
                                        Icon(Icons.lock_outline, size: 18, color: Color(0xFF79747E)),
                                        SizedBox(width: 6),
                                        Text("Standard encryption (TLS).", style: TextStyle(fontSize: 14, color: Color(0xFF79747E))),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    const Text(
                                      "      View security details",
                                      style: TextStyle(fontSize: 14, color: Color(0xFF3a4969), fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),

                            const SizedBox(height: 20),

                            // Email Body
                            Container(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                              margin: const EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 22),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.data["sender"] ?? "",
                                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Color(0xFF1C1B1F)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    widget.data["body"] ?? "No message body",
                                    style: const TextStyle(fontSize: 16, height: 1.20, color: Color(0xFF36373a)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 40),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Bottom Action Buttons (same)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildActionButton("Reply", "assets/reply.png"),
                          const SizedBox(width: 10),
                          _buildActionButton("Forward", "assets/forward.png"),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.all(8),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFF3b4255),
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xFFC4C0CC), width: 1.5),
                            ),
                            child: Image.asset("assets/emoji.png", height: 22, width: 22, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),

            // Footer (same)
            Container(
              color: const Color(0xFFe8e7ef),
              padding: const EdgeInsets.fromLTRB(32, 10, 32, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 64,
                        height: 36,
                        decoration: BoxDecoration(color: const Color(0xFF6d7487), borderRadius: BorderRadius.circular(50)),
                        child: const Icon(Icons.mail, color: Colors.white, size: 28),
                      ),
                      Positioned(
                        top: -3,
                        right: 3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: const Color(0xff8a030b), borderRadius: BorderRadius.circular(10)),
                          child: const Text("57", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                   Image.asset("assets/videos.png", height: 32, width: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 40, child: Text(label, style: const TextStyle(color: Color(0xFF56575d), fontSize: 14.5))),
        Expanded(child: Text(value, style: const TextStyle(fontSize: 14.5, color: Color(0xFF1C1B1F)))),
      ],
    );
  }

  Widget _buildActionButton(String text, String path) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(color: const Color(0xFF3b4255), borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path, height: 28, width: 28, color: Colors.white),
            const SizedBox(width: 8),
            Text(text, style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}