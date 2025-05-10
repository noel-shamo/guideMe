import 'package:flutter/material.dart';
import '../utils/theme.dart';
import '../widgets/feature_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final bool isMobile = screenSize.width < 768;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'Guide Me',
              style: TextStyle(
                color: AppTheme.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Features',
              style: TextStyle(color: AppTheme.textDarkColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'About',
              style: TextStyle(color: AppTheme.textDarkColor),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Contact',
              style: TextStyle(color: AppTheme.textDarkColor),
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(onPressed: () {}, child: const Text('Download')),
          const SizedBox(width: 24),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 80,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (!isMobile)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Guide Me Application',
                            style: Theme.of(
                              context,
                            ).textTheme.displaySmall?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Find your way, Book your time',
                            style: Theme.of(
                              context,
                            ).textTheme.headlineMedium?.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'GuidMe helps students navigate complex university buildings and connect with faculty members effortlessly.',
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                              color: Colors.white.withOpacity(0.9),
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            style: AppTheme.primaryButtonStyle.copyWith(
                              backgroundColor: MaterialStateProperty.all(
                                Colors.white,
                              ),
                              foregroundColor: MaterialStateProperty.all(
                                AppTheme.primaryColor,
                              ),
                            ),
                            onPressed: () {},
                            child: const Text('Download App'),
                          ),
                        ],
                      ),
                    ),
                  if (isMobile)
                    Column(
                      children: [
                        Text(
                          'Guide Me Application',
                          style: Theme.of(
                            context,
                          ).textTheme.displaySmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Find your way, Book your time',
                          style: Theme.of(
                            context,
                          ).textTheme.headlineMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'GuidMe helps students navigate complex university buildings and connect with faculty members effortlessly.',
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(color: Colors.white.withOpacity(0.9)),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: AppTheme.primaryButtonStyle.copyWith(
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white,
                            ),
                            foregroundColor: MaterialStateProperty.all(
                              AppTheme.primaryColor,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Download App'),
                        ),
                      ],
                    ),
                  if (!isMobile)
                    Expanded(
                      child: Center(
                        child: Container(
                          height: 550,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 20,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            'assets/IMG_B16808BB6A7C-1.jpeg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // Features Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 60,
              ),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Why Choose GuidMe?',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppTheme.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Smart solutions for a connected campus experience',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.textLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 50),
                  Wrap(
                    spacing: 30,
                    runSpacing: 30,
                    alignment: WrapAlignment.center,
                    children: const [
                      FeatureCard(
                        icon: Icons.qr_code_scanner,
                        title: 'QR-Based Navigation',
                        description:
                            'Scan QR codes to navigate complex university buildings with ease.',
                      ),
                      FeatureCard(
                        icon: Icons.view_in_ar,
                        title: 'Augmented Reality',
                        description:
                            'Follow real-time visual directions through your camera view.',
                      ),
                      FeatureCard(
                        icon: Icons.people_alt_outlined,
                        title: 'Connect with Faculty',
                        description:
                            'View detailed faculty profiles and request appointments seamlessly.',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // App Showcase
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 60,
              ),
              color: Colors.grey[50],
              child: Column(
                children: [
                  Text(
                    'Experience GuidMe',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppTheme.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'See how our app transforms university navigation and communication',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.textLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 500,
                    child: Center(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 800,
                          maxHeight: 500,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 20,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          'assets/IMG_B16808BB6A7C-1.jpeg',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Contact Section
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 60,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Ready to Get Started?',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppTheme.primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Download the app or contact us for more information',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: AppTheme.textLightColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: AppTheme.primaryButtonStyle,
                        onPressed: () {},
                        child: const Text('Download App'),
                      ),
                      const SizedBox(width: 16),
                      OutlinedButton(
                        style: AppTheme.secondaryButtonStyle,
                        onPressed: () {},
                        child: const Text('Contact Us'),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 30,
              ),
              color: AppTheme.primaryColor,
              child: Column(
                children: [
                  Text(
                    '© 2023 GuidMe. All rights reserved.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
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
