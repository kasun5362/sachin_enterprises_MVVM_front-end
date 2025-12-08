import 'package:flutter/material.dart';
import 'package:sachin_enterprises/features/booking/view/booking_screen.dart';
import 'package:sachin_enterprises/features/fav/view/fav_screen.dart';
import 'package:sachin_enterprises/features/product/view/product_screen.dart';
import 'package:sachin_enterprises/features/profile/view/profile_screen.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ProductScreen(),
    const FavScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = [
    "Discover Products",
    "My Favorites",
    "My Bookings",
    "My Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],

      body: SafeArea(child: _screens[_currentIndex]),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sachin Enterprises",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            _appBarTitles[_currentIndex],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.9),
            ),
          ),
        ],
      ),
      backgroundColor: ColorConstants.primaryColor,
      elevation: 3,
      shadowColor: Colors.black.withOpacity(0.1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      ),
      centerTitle: false,
      actions: [
        if (_currentIndex == 0) // Only show on home screen
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              icon: const Icon(Icons.search, size: 24),
              onPressed: () {
                // Add search functionality
              },
              tooltip: 'Search Products',
            ),
          ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 16,
            offset: const Offset(0, -4),
          ),
        ],
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: ColorConstants.primaryColor,
          unselectedItemColor: Colors.grey[600],
          selectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.3,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.3,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          elevation: 0,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 0
                      ? ColorConstants.primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Icon(
                  _currentIndex == 0 ? Icons.home_filled : Icons.home_outlined,
                  size: 22,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 1
                      ? ColorConstants.primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Icon(
                  _currentIndex == 1
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  size: 22,
                ),
              ),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 2
                      ? ColorConstants.primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Icon(
                  _currentIndex == 2
                      ? Icons.bookmark_added
                      : Icons.bookmark_add_outlined,
                  size: 22,
                ),
              ),
              label: "Bookings",
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 3
                      ? ColorConstants.primaryColor.withOpacity(0.1)
                      : Colors.transparent,
                ),
                child: Icon(
                  _currentIndex == 3 ? Icons.person_2 : Icons.person_2_outlined,
                  size: 22,
                ),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
