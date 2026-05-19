import 'package:flutter/material.dart';

final List<Map<String, dynamic>> _messages = [
  {
    "sender": "CIH Online",
    "title": "Confirmation of Bank Transfer CIH Online",
    "subtitle": "Confirmation of Bank Transfer Dear C...",
    "time": "16:44",
    "isRead": true, // opened
    "isCIH": true,
    "from": " cihnet@cih.co.ma",
    "email": " ayamaroc025@gmail.com",
    "date": " May 19, 2026, 16:44",
  },
  {
    "sender": "Binance",
    "title": "[Binanc...] Update on Your P2P Disput...",
    "subtitle": "[Binance] Update on Your P2P Disput...",
    "time": "May 18",
    "isRead": true, // opened
    "body":
        "[Binance] Update on Your P2P Dispute\n\nDear User,\n\nWe would like to inform you that your P2P dispute case has been updated. Please log in to your Binance account to review the latest status and take any required action.\n\nIf you have any questions, please contact our support team.\n\nThank you,\nBinance Team",
    "from": "no-reply@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 18, 2026, 03:00",
  },
  {
    "sender": "Binance",
    "title": "[Binanc...] Notice of P2P appeal outc...",
    "subtitle": "[Binance] Notice of P2P appeal outco...",
    "time": "May 18",
    "isRead": true, // opened
    "body":
        "[Binance] Notice of P2P Appeal Outcome\n\nDear User,\n\nYour P2P appeal has been reviewed and a decision has been reached. Please log in to your account to see the outcome.\n\nThank you,\nBinance Team",
    "from": "no-reply@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 18, 2026, 01:26",
  },
  {
    "sender": "Binance",
    "title": "[Binanc...] Update on Your P2P Disput...",
    "subtitle": "[Binance] Update on Your P2P Disput...",
    "time": "May 15",
    "isRead": true, // opened (4th)
    "body":
        "[Binance] Update on Your P2P Dispute\n\nDear User,\n\nThis is a follow-up regarding your recent P2P dispute. Our team is currently reviewing your case.\n\nThank you for your patience.\n\nBinance Team",
    "from": "no-reply@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 15, 2026",
  },
  // ── UNREAD from here ──
  {
    "sender": "Binance",
    "title": "Binance Support: New Message in...",
    "subtitle": "Binance Support: New Message in Ch...",
    "time": "May 14",
    "isRead": false,
    "body":
        "Binance Support: New Message in Chat\n\nDear User,\n\nYou have a new message in your support chat. Please log in to your Binance account to read and respond to the message.\n\nThank you,\nBinance Support",
    "from": "support@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 14, 2026",
  },
  {
    "sender": "Binance",
    "title": "[Binanc...] New Device or IP Login...",
    "subtitle": "New Device or IP Login Detected on Y...",
    "time": "May 13",
    "isRead": false,
    "body":
        "New Device or IP Login Detected on Your Account\n\nDear User,\n\nWe detected a login to your Binance account from a new device or IP address.\n\nIf this was you, no action is needed.\nIf this was not you, please secure your account immediately.\n\nBinance Security Team",
    "from": "security@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 13, 2026",
  },
  {
    "sender": "Binance",
    "title": "Binance Support: New Message in...",
    "subtitle": "Binance Support: New Message in Ch...",
    "time": "May 13",
    "isRead": false,
    "body":
        "Binance Support: New Message in Chat\n\nDear User,\n\nYou have a new message in your support chat. Please log in to your Binance account to read and respond.\n\nBinance Support",
    "from": "support@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 13, 2026",
  },
  {
    "sender": "Binance",
    "title": "Binance Support: New Message in...",
    "subtitle": "Binance Support: New Message in Ch...",
    "time": "May 13",
    "isRead": false,
    "body":
        "Binance Support: New Message in Chat\n\nDear User,\n\nThere is a new update in your ongoing support case. Please review at your earliest convenience.\n\nBinance Support",
    "from": "support@binance.com",
    "email": "ayamaroc025@gmail.com",
    "date": "May 13, 2026",
  },
];

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F4F8),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 60),
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xFF5d73aa),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.edit, color: Colors.white, size: 25),
            SizedBox(width: 7),
            Text(
              "Compose",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 8),
                  // ── Top Bar ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.menu,
                          size: 28,
                          color: Color(0xFF1C1B1F),
                        ),
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
                                  color: Colors.black54,
                                  fontSize: 17,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xff5d3f37),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              "A",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Primary",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // ── Email List ──
                  ...List.generate(_messages.length, (index) {
                    final msg = _messages[index];
                    final bool isRead = msg["isRead"] == true;
                    final bool isCIH = msg["isCIH"] == true;
                    final bool isFirstCIH = index == 0;

                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MessageDetailScreen(data: msg),
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 1),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Avatar
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: isCIH
                                  ? const Color(0xff5f97f6)
                                  : isRead
                                  ? const Color(0xff9ba0a6)
                                  : const Color(0xffb968c7),
                              child: isCIH
                                  ? const Text(
                                      "C",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto',
                                      ),
                                    )
                                  : isRead
                                  ? const Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 32,
                                    )
                                  : Text(
                                      msg["sender"]![0],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontFamily: 'Roboto',
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
                                      // CIH arrow icon
                                      if (isFirstCIH) ...[
                                        Image.asset(
                                          "assets/logo.png",
                                          height: 15,
                                          width: 20,
                                          fit: BoxFit.fill,
                                        ),
                                        const SizedBox(width: 2),
                                      ],
                                      Expanded(
                                        child: Text(
                                          msg["sender"]!,
                                          style: TextStyle(
                                            fontWeight: isRead
                                                ? FontWeight.w400
                                                : FontWeight.w700,
                                            fontSize: 17,
                                            fontFamily: 'Roboto',
                                            color: const Color(0xFF1C1B1F),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        msg["time"]!,
                                        style: TextStyle(
                                          fontWeight: isRead
                                              ? FontWeight.w400
                                              : FontWeight.w500,
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          color: isRead
                                              ? const Color(0xFF49454F)
                                              : const Color(0xFF1C1B1F),
                                        ),
                                      ),
                                      if (!isRead) ...[
                                        const SizedBox(width: 6),
                                        const CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Color(0xFF1C1B1F),
                                        ),
                                      ],
                                    ],
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    msg["title"]!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: isRead
                                          ? FontWeight.w400
                                          : FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      color: const Color(0xFF1C1B1F),
                                    ),
                                  ),
                                  const SizedBox(height: 1),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          msg["subtitle"]!,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Color(0xFF79747E),
                                            fontSize: 16,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Icon(
                                        Icons.star_border,
                                        size: 24,
                                        color: Color(0xFF79747E),
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
                  const SizedBox(height: 80),
                ],
              ),
            ),
            // ── Bottom Bar ──
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
                        decoration: BoxDecoration(
                          color: const Color(0xFF6d7487),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.mail,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                      Positioned(
                        top: -5,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xff8a030b),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "59",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Transform.scale(
                      scale: 5,
                      child: Image.asset(
                        "assets/Untitled.png",
                        fit: BoxFit.contain,
                        filterQuality: FilterQuality.high,
                        height: 15,
                        width: 90,
                      ),
                    ),
                  ),
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
  final Map<String, dynamic> data;
  const MessageDetailScreen({super.key, required this.data});
  @override
  State<MessageDetailScreen> createState() => _MessageDetailScreenState();
}

class _MessageDetailScreenState extends State<MessageDetailScreen> {
  bool _isDetailsExpanded = false;
  final ScrollController _scrollController = ScrollController();
  bool _isFooterVisible = true;
  double _lastScrollOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final currentOffset = _scrollController.offset;
    if (currentOffset > _lastScrollOffset && currentOffset > 50) {
      // Scroll DOWN → hide footer
      if (_isFooterVisible) setState(() => _isFooterVisible = false);
    } else {
      // Scroll UP → show footer
      if (!_isFooterVisible) setState(() => _isFooterVisible = true);
    }
    _lastScrollOffset = currentOffset;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isCIH = widget.data["isCIH"] == true;
    final String senderInitial =
        (widget.data["sender"] as String?)?.isNotEmpty == true
        ? widget.data["sender"]![0].toUpperCase()
        : "G";

    return Scaffold(
      backgroundColor: const Color(0xFFF0EEF4),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 26,
                      color: Color(0xFF1C1B1F),
                    ),
                  ),
                  const Spacer(),
                  Image.asset("assets/download.png", height: 28, width: 28,color: Color(0xff1a191e),),
                  const SizedBox(width: 18),
                  Image.asset("assets/delete.png", height: 28, width: 28,color: Color(0xff1a191e)),
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.mark_email_unread_outlined,
                    size: 26,
                    color: Color(0xff1a191e),
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.more_vert,
                    size: 26,
                    color: Color(0xff1a191e),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                controller: _scrollController, // ← scroll controller
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 4),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              isCIH
                                  ? "Confirmation of Bank Transfer CIH Online"
                                  : (widget.data["title"] ?? "No Subject"),
                              style: const TextStyle(
                                fontSize: 19,
                                height: 1.25,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto',
                                color: Color(0xFF1C1B1F),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.star_border,
                            size: 26,
                            color: Color(0xFF49454F),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF5d73a9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Text(
                          "Inbox",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff9f8fe),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: GestureDetector(
                                onTap: () => setState(
                                  () =>
                                      _isDetailsExpanded = !_isDetailsExpanded,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundColor: isCIH
                                          ? const Color(0xff4a90d9)
                                          : const Color(0xFF26A69A),
                                      child: isCIH
                                          ? const Text(
                                              "C",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Roboto',
                                              ),
                                            )
                                          : Text(
                                              senderInitial,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Roboto',
                                              ),
                                            ),
                                    ),
                                    const SizedBox(width: 12),

                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                widget.data["sender"] ??
                                                    "Unknown",
                                                style: const TextStyle(
                                                  fontSize: 15.5,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF1C1B1F),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                widget.data["time"] ?? "",
                                                style: const TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF79747E),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 2),
                                          Row(
                                            children: [
                                              const Text(
                                                "to me",
                                                style: TextStyle(
                                                  fontSize: 13.5,
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF49454F),
                                                ),
                                              ),
                                              Icon(
                                                _isDetailsExpanded
                                                    ? Icons.keyboard_arrow_up
                                                    : Icons.keyboard_arrow_down,
                                                size: 16,
                                                color: const Color(0xFF49454F),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "assets/emoji.png",
                                            height: 26,
                                            width: 26,
                                          ),
                                          const SizedBox(width: 14),
                                          Image.asset(
                                            "assets/reply.png",
                                            height: 26,
                                            width: 26,
                                          ),
                                          const SizedBox(width: 14),
                                          const Icon(
                                            Icons.more_horiz,
                                            size: 26,
                                            color: Color(0xFF5F6368),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            if (_isDetailsExpanded)
                              Container(
                                margin: const EdgeInsets.fromLTRB(
                                  12,
                                  10,
                                  12,
                                  0,
                                ),
                                padding: const EdgeInsets.fromLTRB(
                                  16,
                                  14,
                                  16,
                                  14,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xffeeedf3),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _infoRow(
                                      " From",
                                      widget.data["from"] ??
                                          "noreply@example.com",
                                    ),
                                    const SizedBox(height: 8),
                                    _infoRow(
                                      " To",
                                      widget.data["email"] ?? "user@gmail.com",
                                    ),
                                    const SizedBox(height: 8),
                                    _infoRow(
                                      " Date",
                                      widget.data["date"] ?? "",
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: const [
                                        Icon(
                                          Icons.lock_outline,
                                          size: 18,
                                          color: Color(0xFF79747E),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          "     Standard encryption (TLS).",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            color: Color(0xFF1c1b20),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 24),
                                      child: Text(
                                        "     View security details",
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF464e71),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            const SizedBox(height: 20),

                            const Divider(
                              color: Color(0xFFE0E0E0),
                              thickness: 1,
                            ),

                            Container(
                              width: double.infinity,
                              padding:  EdgeInsets.fromLTRB(16, 0, 16, 20),
                              margin: const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: isCIH
                                  ? _buildCIHBody()
                                  : _buildBinanceBody(),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),

            // ── Footer with hide-on-scroll animation ──
            Padding(
              padding:  EdgeInsets.fromLTRB(32, 10, 32,_isFooterVisible? 16:0),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      _buildActionButton("Reply", "assets/reply.png"),
                      const SizedBox(width: 10),
                      _buildActionButton("Forward", "assets/forward.png"),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3b4255),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFFC4C0CC),
                            width: 1.5,
                          ),
                        ),
                        child: Image.asset(
                          "assets/emoji.png",
                          height: 26,
                          width: 26,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:_isFooterVisible? 30:15),
                  _isFooterVisible?AnimatedSlide(
                    offset: _isFooterVisible ? Offset.zero : const Offset(0, 1),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: AnimatedOpacity(
                      opacity: _isFooterVisible ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
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
                                  size: 26,
                                ),
                              ),
                              Positioned(
                                top: -5,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 2,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff8a030b),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Text(
                                    "99+",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 6),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Transform.scale(
                              scale: 5,
                              child: Image.asset(
                                "assets/Untitled.png",
                                fit: BoxFit.contain,
                                filterQuality: FilterQuality.high,
                                height: 15,
                                width: 90,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ):SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCIHBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Image.asset(
          "assets/logo.png.webp",
          height: 34,
          width: 120,
          fit: BoxFit.fill,
        ),
        const Divider(color: Color(0xFFE0E0E0), thickness: 1),
        const SizedBox(height: 12),
        const Center(
          child: Text(
            "Confirmation of Bank Transfer",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'Roboto',
              color: Color(0xFFE65100),
            ),
          ),
        ),
        const SizedBox(height: 14),
        const Text(
          "Dear Customer,",
          style: TextStyle(fontSize: 14.5, fontFamily: 'Roboto'),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 8),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14.5,
              fontFamily: 'Roboto',
              color: Color(0xFF36373a),
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    "We hereby confirm that the following transfer has been successfully processed and validated by CIH",
              ),
              TextSpan(text: " BANK."),
            ],
          ),
          textAlign: TextAlign.justify,

        ),
        const SizedBox(height: 16),
        const Text(
          "Transaction Details:",
          style: TextStyle(
            fontSize: 14.5,
            fontWeight: FontWeight.w700,
            fontFamily: 'Roboto',
            color: Color(0xFF1565C0),
          ),
          textAlign: TextAlign.justify,

        ),
        const SizedBox(height: 10),
        _cihDetailRow("Sender Account:", "AYA ATTAR – 6784724211021600"),
        _cihDetailRow(
          "Beneficiary Account:",
          "YASSIR EL MOUDDEN –\n230735606285721101150041",
        ),
        _cihDetailRow("Reference Number:", "VVB00001581278C"),
        _cihDetailRow("Amount:", "2,000.00 MAD", bold: true),
        _cihDetailRow("Execution Date:", "06-05-2026"),
        _cihDetailRow("Date Received by Beneficiary:", "11-05-2026"),
        _cihDetailRow(
          "Transfer Status:",
          "Validated / Successfully Completed",
          bold: true,
        ),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Roboto',
              color: Color(0xFF36373a),
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    "This email serves as an official confirmation that the payment has been executed successfully through CIH",
              ),
              TextSpan(text: " BANK systems."),
            ],
          ),
        ),
        const SizedBox(height: 100),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Security",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    color: Color(0xFFB71C1C),
                  ),
                ),
                Container(
                  width: 50,
                  height: 1.5,
                  color: const Color(0xFFB71C1C),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  " Recommendations:",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto',
                    color: Color(0xFFB71C1C),
                  ),
                ),
                Container(
                  width: 130,
                  height: 1.7,
                  color: const Color(0xFFB71C1C),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          "For your security, we remind you never to share your confidential login credentials with anyone, whether by phone, email, or in writing. CIH BANK will never ask you, under any circumstances, to communicate your secret access code.",
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
            color: Color(0xFF36373a),
            height: 1.5,
          ),
          textAlign: TextAlign.justify,

        ),
        const SizedBox(height: 12),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Roboto',
              color: Color(0xFF36373a),
              height: 1.5,
            ),
            children: [
              TextSpan(
                text:
                    'If you receive an email inviting you to connect to the bank\'s website "',
              ),
              TextSpan(
                text: "https://www.cihnet.co.ma/",
                style: TextStyle(
                  color: Color(0xFF1565C0),
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text:
                    '" in order to update your information or due to a "security alert" requesting you to change your password, please follow these security rules:',
              ),
            ],
          ),
          textAlign: TextAlign.justify,

        ),
        const SizedBox(height: 10),
        _bulletPoint("Do not click on any links contained in such emails"),
        _bulletPoint("Do not share your customer ID or secret code"),
        _bulletPoint("Do not reply to such emails"),
        _bulletPoint("Delete such emails immediately"),
        const SizedBox(height: 16),
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'Roboto',
              color: Color(0xFF79747E),
              height: 1.5,
            ),
            children: [
              TextSpan(text: "Copyright ©2015 CIH"),
              TextSpan(text: ", All rights reserved."),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _cihDetailRow(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 160,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 11.5,
                fontFamily: 'Roboto',
                fontWeight :FontWeight.w400,
                color: Color(0xFF56575d),
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 11,
                fontFamily: 'Roboto',
                fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
                color: const Color(0xFF1C1B1F),
              ),

            ),
          ),
        ],
      ),
    );
  }

  Widget _bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                color: Color(0xFF36373a),
                height: 1.4,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }

  // ── Binance Email Body ──
  Widget _buildBinanceBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 22),
        Text(
          widget.data["sender"] ?? "",
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            color: Color(0xFF1C1B1F),
          ),
          textAlign: TextAlign.justify,

        ),
        const SizedBox(height: 10),
        Text(
          widget.data["body"] ?? "No message body",
          style: const TextStyle(
            fontSize: 15,
            height: 1.5,
            fontFamily: 'Roboto',
            color: Color(0xFF36373a),
          ),
          textAlign: TextAlign.justify,

        ),
      ],
    );
  }

  Widget _infoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFF45434d),
              fontSize: 14.5,
              fontFamily: 'Roboto',
            ),
            textAlign: TextAlign.justify,

          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14.5,
              fontFamily: 'Roboto',
              color: Color(0xFF1C1B1F),
            ),
            textAlign: TextAlign.justify,

          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String text, String path) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
          color: const Color(0xFF3b4255),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(path, height: 26, width: 26, color: Colors.white),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.5,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
              ),
              textAlign: TextAlign.justify,

            ),
          ],
        ),
      ),
    );
  }
}
