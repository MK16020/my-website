import 'package:flutter/material.dart';
import 'package:my_website/constants/colors.dart';
import 'package:my_website/constants/size.dart';
import 'package:my_website/styles/text_header.dart';
import 'package:my_website/widgets/contact_mobile.dart';
import 'package:my_website/widgets/header_desktop.dart';
import 'package:my_website/widgets/header_mobile.dart';
import 'package:my_website/widgets/skills_mobile.dart';

import '../widgets/about_desktop.dart';
import '../widgets/about_mobile.dart';
import '../widgets/contact_desktop.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/intro.dart';
import '../widgets/project_desktop.dart';
import '../widgets/project_mobile.dart';
import '../widgets/skills_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(
          children: [
            // Main.
            (screenWidth >= KMinDesktopWidth)
                ? HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                : HeaderMobile(
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
            SizedBox(key: navbarKeys.first),
            Intro(screenWidth: screenWidth, screenHeight: screenHeight),

            // About.
            SizedBox(key: navbarKeys[1]),
            (screenWidth >= KMedDesktopWidth)
                ? AboutDesktop(screenWidth: screenWidth, screenHeight: screenHeight)
                : AboutMobile(screenWidth: screenWidth),

            // Skills.
            SizedBox(key: navbarKeys[2]),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              color: CustomColor.bgLight2,
              width: screenWidth,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextHeader(data: 'What I can do', fontSize: (screenWidth / 20 < 30 ? 30 : screenWidth / 20)),
                  const SizedBox(height: 50),
                  (screenWidth >= KMedDesktopWidth) ? const SkillsDesktop() : const SkillsMobile(),
                ],
              ),
            ),

            // Projects.
            SizedBox(key: navbarKeys[3]),
            (screenWidth >= KMedDesktopWidth)
                ? ProjectDesktop(screenWidth: screenWidth)
                : ProjectMobile(screenWidth: screenWidth),

            // Contact.
            SizedBox(key: navbarKeys[4]),
            (screenWidth >= KMedDesktopWidth)
                ? ContactDesktop(
                    screenWidth: screenWidth,
                    nameController: nameController,
                    emailController: emailController,
                    messageController: messageController,
                  )
                : ContactMobile(
                    screenWidth: screenWidth,
                    nameController: nameController,
                    emailController: emailController,
                    messageController: messageController,
                  ),

            // Footer.
            const Footer(),
          ],
        ),
      ),
      endDrawer: screenWidth >= KMinDesktopWidth
          ? null
          : DrawerMobile(
              onNavItemTap: (int navIndex) {
                Navigator.pop(context);
                scrollToSection(navIndex);
              },
            ),
      backgroundColor: CustomColor.whitePrimary,
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
