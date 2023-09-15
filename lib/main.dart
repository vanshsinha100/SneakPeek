import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const NikeLandingApp());

class NikeLandingApp extends StatefulWidget {
  const NikeLandingApp({super.key});

  @override
  State<NikeLandingApp> createState() => _NikeLandingAppState();
}

class _NikeLandingAppState extends State<NikeLandingApp> {
  bool isDarkMode = true;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dark = ColorScheme.fromSeed(
      seedColor: Colors.grey.shade800,
      brightness: Brightness.dark,
    );
    final light = ColorScheme.fromSeed(
      seedColor: Colors.grey.shade300,
      brightness: Brightness.light,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Air Max – Concept',
      theme: ThemeData(
        colorScheme: isDarkMode ? dark : light,
        useMaterial3: true,
        textTheme: GoogleFonts.interTightTextTheme(
          isDarkMode ? ThemeData.dark().textTheme : ThemeData.light().textTheme
        ),
      ),
      home: NikeHome(
        isDarkMode: isDarkMode,
        onThemeToggle: toggleTheme,
      ),
    );
  }
}

class ShoeData {
  final String title;
  final String subtitle;
  final int price;
  final String asset;
  final String cardAsset;
  final String description;
  final int rating;
  
  ShoeData({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.asset,
    required this.cardAsset,
    required this.description,
    required this.rating,
  });
}

class NikeHome extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onThemeToggle;
  
  const NikeHome({
    super.key,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  State<NikeHome> createState() => _NikeHomeState();
}

class _NikeHomeState extends State<NikeHome> {
  int selectedShoeIndex = 0;
  String selectedCategory = 'MEN'; // Track selected category

  // Men's shoes
  final menShoes = <ShoeData>[
    ShoeData(
      title: 'NIKE DUNK RETRO',
      subtitle: 'WHITE/BLACK',
      price: 160,
      asset: 'assets/men_shoe_1.png',
      cardAsset: 'assets/men_shoe_1.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE AIR JORDAN 1',
      subtitle: 'RED',
      price: 245,
      asset: 'assets/men_shoe_2.png',
      cardAsset: 'assets/men_shoe_2.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE AIR MAX 270',
      subtitle: 'BLACK/WHITE',
      price: 185,
      asset: 'assets/men_shoe_3.png',
      cardAsset: 'assets/men_shoe_3.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
    ShoeData(
      title: 'NIKE AIR FORCE 1',
      subtitle: 'TRIPLE WHITE',
      price: 120,
      asset: 'assets/men_shoe_4.png',
      cardAsset: 'assets/men_shoe_4.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE ZOOM PEGASUS',
      subtitle: 'NAVY/GREY',
      price: 145,
      asset: 'assets/men_shoe_5.png',
      cardAsset: 'assets/men_shoe_5.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
  ];

    // Women's shoes
  final womenShoes = <ShoeData>[
    ShoeData(
      title: 'NIKE AQUA SWOOSH',
      subtitle: 'PINK/WHITE',
      price: 150,
      asset: 'assets/women_shoe_1.png',
      cardAsset: 'assets/women_shoe_1.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE ALPHAFLY',
      subtitle: 'PASTEL',
      price: 230,
      asset: 'assets/women_shoe_2.png',
      cardAsset: 'assets/women_shoe_2.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
    ShoeData(
      title: 'NIKE AIR SUPERFLY',
      subtitle: 'BLACK',
      price: 175,
      asset: 'assets/women_shoe_3.png',
      cardAsset: 'assets/women_shoe_3.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE AIR FORCE',
      subtitle: 'LAVENDER',
      price: 135,
      asset: 'assets/women_shoe_4.png',
      cardAsset: 'assets/women_shoe_4.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
    ShoeData(
      title: 'NIKE AIR MAX MUSE',
      subtitle: 'CORAL/MINT',
      price: 140,
      asset: 'assets/women_shoe_5.png',
      cardAsset: 'assets/women_shoe_5.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
  ];

  // Kids' shoes
  final kidsShoes = <ShoeData>[
    ShoeData(
      title: 'NIKE JORDAN 1',
      subtitle: 'RAINBOW',
      price: 75,
      asset: 'assets/kids_shoe_1.png',
      cardAsset: 'assets/kids_shoe_1.png',
      description: 'Free shipping • 30-day return',
      rating: 5,
    ),
    ShoeData(
      title: 'NIKE JORDAN SE',
      subtitle: 'BLUE/WHITE',
      price: 65,
      asset: 'assets/kids_shoe_2.png',
      cardAsset: 'assets/kids_shoe_2.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
    ShoeData(
      title: 'NIKE LUKA 4',
      subtitle: 'WHITE',
      price: 55,
      asset: 'assets/kids_shoe_3.png',
      cardAsset: 'assets/kids_shoe_3.png',
      description: 'Free shipping • 30-day return',
      rating: 3,
    ),
    ShoeData(
      title: 'NIKE JR. PHANTOM',
      subtitle: 'BLUE/ORANGE',
      price: 60,
      asset: 'assets/kids_shoe_4.png',
      cardAsset: 'assets/kids_shoe_4.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
    ShoeData(
      title: 'NIKE BIRTHDAY CAKE',
      subtitle: 'MULTI COLOR',
      price: 70,
      asset: 'assets/kids_shoe_5.png',
      cardAsset: 'assets/kids_shoe_5.png',
      description: 'Free shipping • 30-day return',
      rating: 4,
    ),
  ];

  // Get current shoe data based on selected category
  List<ShoeData> get currentShoeData {
    switch (selectedCategory) {
      case 'MEN':
        return menShoes;
      case 'WOMEN':
        return womenShoes;
      case 'KIDS':
        return kidsShoes;
      default:
        return menShoes;
    }
  }

  void onShoeSelected(int index) {
    setState(() {
      selectedShoeIndex = index;
    });
  }

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
      selectedShoeIndex = 0; // Reset to first shoe when switching categories
    });
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = widget.isDarkMode ? const Color(0xFF0F1013) : const Color(0xFFF5F5F5);
    
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          _RadialBackdrop(isDarkMode: widget.isDarkMode),
          SafeArea(
            child: Column(
              children: [
                _FrostedNavBar(
                  selectedCategory: selectedCategory,
                  onCategorySelected: onCategorySelected,
                  isDarkMode: widget.isDarkMode,
                  onThemeToggle: widget.onThemeToggle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height > MediaQuery.of(context).size.width ? 8 : 16),
                Expanded(child: _HeroArea(
                  selectedShoe: currentShoeData[selectedShoeIndex],
                  isDarkMode: widget.isDarkMode,
                  selectedShoeIndex: selectedShoeIndex,
                  selectedCategory: selectedCategory,
                )),
                _BottomCarousel(
                  shoeData: currentShoeData,
                  selectedIndex: selectedShoeIndex,
                  onShoeSelected: onShoeSelected,
                  isDarkMode: widget.isDarkMode,
                  selectedCategory: selectedCategory,
                ),
                SizedBox(height: MediaQuery.of(context).size.height > MediaQuery.of(context).size.width ? 12 : 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// ===== NAVBAR =====
class _FrostedNavBar extends StatelessWidget {
  final String selectedCategory;
  final Function(String) onCategorySelected;
  final bool isDarkMode;
  final VoidCallback onThemeToggle;
  
  const _FrostedNavBar({
    required this.selectedCategory,
    required this.onCategorySelected,
    required this.isDarkMode,
    required this.onThemeToggle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 768;
    final isPortrait = screenHeight > screenWidth;
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 8 : 14),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Container(
            height: isPortrait ? 52 : (isMobile ? 56 : 64),
            decoration: BoxDecoration(
              color: isDarkMode 
                  ? Colors.white.withOpacity(0.05)
                  : Colors.black.withOpacity(0.05),
              border: Border.all(
                color: isDarkMode 
                    ? Colors.white.withOpacity(.08)
                    : Colors.black.withOpacity(.08)
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                SizedBox(width: isPortrait ? 10 : (isMobile ? 12 : 18)),
                // Nike logo from asset
                ColorFiltered(
                  colorFilter: isDarkMode 
                      ? const ColorFilter.mode(Colors.transparent, BlendMode.multiply)
                      : const ColorFilter.mode(Colors.black, BlendMode.srcATop),
                  child: Image.asset(
                    'assets/nike.png',
                    width: isPortrait ? 38 : (isMobile ? 45 : 60),
                    height: isPortrait ? 23 : (isMobile ? 27 : 36),
                    fit: BoxFit.contain,
                    errorBuilder: (_, __, ___) => Container(
                      width: isPortrait ? 38 : (isMobile ? 45 : 60),
                      height: isPortrait ? 23 : (isMobile ? 27 : 36),
                      decoration: BoxDecoration(
                        color: isDarkMode 
                            ? Colors.white.withOpacity(.3)
                            : Colors.black.withOpacity(.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.sports,
                        size: isPortrait ? 16 : (isMobile ? 18 : 24),
                        color: isDarkMode 
                            ? Colors.white.withOpacity(.8)
                            : Colors.black.withOpacity(.8),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _NavLink(
                      text: 'MEN',
                      isSelected: selectedCategory == 'MEN',
                      onTap: () => onCategorySelected('MEN'),
                      isDarkMode: isDarkMode,
                      isMobile: isMobile,
                      isPortrait: isPortrait,
                    ),
                    SizedBox(width: isPortrait ? 16 : (isMobile ? 20 : 40)),
                    _NavLink(
                      text: 'WOMEN',
                      isSelected: selectedCategory == 'WOMEN',
                      onTap: () => onCategorySelected('WOMEN'),
                      isDarkMode: isDarkMode,
                      isMobile: isMobile,
                      isPortrait: isPortrait,
                    ),
                    SizedBox(width: isPortrait ? 16 : (isMobile ? 20 : 40)),
                    _NavLink(
                      text: 'KIDS',
                      isSelected: selectedCategory == 'KIDS',
                      onTap: () => onCategorySelected('KIDS'),
                      isDarkMode: isDarkMode,
                      isMobile: isMobile,
                      isPortrait: isPortrait,
                    ),
                  ],
                ),
                const Spacer(),
                // Theme toggle integrated into nav bar
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.light_mode,
                      color: isDarkMode 
                          ? Colors.white.withOpacity(0.5)
                          : Colors.orange,
                      size: isPortrait ? 12 : (isMobile ? 14 : 16),
                    ),
                    SizedBox(width: isPortrait ? 2 : (isMobile ? 3 : 4)),
                    Transform.scale(
                      scale: isPortrait ? 0.5 : (isMobile ? 0.6 : 0.7),
                      child: Switch(
                        value: isDarkMode,
                        onChanged: (_) => onThemeToggle(),
                        activeColor: Colors.blue,
                        inactiveThumbColor: Colors.orange,
                        inactiveTrackColor: Colors.orange.withOpacity(0.3),
                        activeTrackColor: Colors.blue.withOpacity(0.3),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                    SizedBox(width: isPortrait ? 2 : (isMobile ? 3 : 4)),
                    Icon(
                      Icons.dark_mode,
                      color: isDarkMode 
                          ? Colors.blue
                          : Colors.black.withOpacity(0.5),
                      size: isPortrait ? 12 : (isMobile ? 14 : 16),
                    ),
                  ],
                ),
                SizedBox(width: isPortrait ? 10 : (isMobile ? 12 : 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isDarkMode;
  final bool isMobile;
  final bool isPortrait;
  
  const _NavLink({
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.isDarkMode,
    this.isMobile = false,
    this.isPortrait = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isPortrait ? 6 : (isMobile ? 8 : 14)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: GoogleFonts.inter(
                fontSize: isPortrait ? 10 : (isMobile ? 12 : 14),
                letterSpacing: isPortrait ? 0.8 : (isMobile ? 1.0 : 1.2),
                fontWeight: FontWeight.w600,
                color: isSelected 
                    ? (isDarkMode ? Colors.white : Colors.black)
                    : (isDarkMode ? Colors.white.withOpacity(.85) : Colors.black.withOpacity(.85)),
              ),
            ),
            const SizedBox(height: 4),
            Container(
              height: 2,
              width: text.length * (isPortrait ? 4.0 : (isMobile ? 6.0 : 8.0)),
              color: isSelected ? Colors.blue : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

/// ===== HERO =====
class _HeroArea extends StatelessWidget {
  final ShoeData selectedShoe;
  final bool isDarkMode;
  final int selectedShoeIndex;
  final String selectedCategory;
  
  const _HeroArea({
    required this.selectedShoe,
    required this.isDarkMode,
    required this.selectedShoeIndex,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    final isWide = w > 1100;
    final isMobile = w < 768;
    final isPortrait = h > w; // Portrait orientation check

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Stack(
        children: [
          // Main glass canvas (opaque)
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isDarkMode 
                        ? [const Color(0xFF15171B), const Color(0xFF0F1013)]
                        : [const Color(0xFFE0E0E0), const Color(0xFFF5F5F5)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),

          // ===== Watermark INSIDE hero (now visible) =====
          Positioned.fill(
            child: IgnorePointer(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 24),
                child: Align(
                  alignment: isPortrait ? Alignment.center : Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Opacity(
                      opacity: isPortrait ? 0.04 : (isMobile ? 0.03 : 0.06),
                      child: Text(
                        'NIKE',
                        style: GoogleFonts.inter(
                          fontSize: isPortrait ? 200 : (isMobile ? 200 : 500),
                          fontWeight: FontWeight.w900,
                          letterSpacing: isPortrait ? 15.0 : (isMobile ? 15.0 : 40.0),
                          height: 1.0,
                          color: isDarkMode ? Colors.white : Colors.grey.shade600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Content - Portrait vs Landscape Layout
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 36, 
              vertical: isMobile ? 16 : 28
            ),
            child: isPortrait ? _buildPortraitLayout(h, w) : (isMobile ? _buildMobileLayout() : _buildDesktopLayout(isWide)),
          ),
        ],
      ),
    );
  }

  Widget _buildPortraitLayout(double screenHeight, double screenWidth) {
    final isPortrait = screenHeight > screenWidth;
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: screenHeight - 160, // Account for nav bar
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              // TOP: JUST DO IT (compact and centered for portrait)
              Container(
                height: screenHeight * 0.15,
                child: Align(
                  alignment: isPortrait ? Alignment.center : Alignment.centerLeft,
                  child: FittedBox(
                    alignment: isPortrait ? Alignment.center : Alignment.centerLeft,
                    child: _JustDoItText(isDarkMode: isDarkMode),
                  ),
                ),
              ),
              
              // MIDDLE: Shoe + glow (main focus, enhanced for portrait)
              Container(
                height: screenHeight * 0.45, // Slightly increased for better shoe showcase
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const _GlowHalo(),
                    _HeroShoe(
                      asset: selectedShoe.asset,
                      selectedShoeIndex: selectedShoeIndex,
                      selectedCategory: selectedCategory,
                    ),
                  ],
                ),
              ),
              
              // BOTTOM: product meta + price (flexible)
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: _HeroMeta(
                        selectedShoe: selectedShoe,
                        isDarkMode: isDarkMode,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        // TOP: Shoe + glow (larger on mobile)
        Expanded(
          flex: 3,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const _GlowHalo(),
              _HeroShoe(
                asset: selectedShoe.asset,
                selectedShoeIndex: selectedShoeIndex,
                selectedCategory: selectedCategory,
              ),
            ],
          ),
        ),
        
        // BOTTOM: Text and Meta in row
        Expanded(
          flex: 2,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // LEFT: JUST DO IT (smaller on mobile)
              Expanded(
                flex: 3,
                child: FittedBox(
                  alignment: Alignment.centerLeft,
                  child: _JustDoItText(isDarkMode: isDarkMode),
                ),
              ),
              
              const SizedBox(width: 16),
              
              // RIGHT: product meta + price (compact)
              Expanded(
                flex: 4,
                child: _HeroMeta(
                  selectedShoe: selectedShoe,
                  isDarkMode: isDarkMode,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(bool isWide) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // LEFT: JUST DO IT.
        Expanded(
          flex: 4,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: _JustDoItText(isDarkMode: isDarkMode),
          ),
        ),

        // CENTER: Shoe + glow
        Expanded(
          flex: 6,
          child: Stack(
            alignment: Alignment.center,
            children: [
              const _GlowHalo(),
              _HeroShoe(
                asset: selectedShoe.asset,
                selectedShoeIndex: selectedShoeIndex,
                selectedCategory: selectedCategory,
              ),
            ],
          ),
        ),

        // RIGHT: product meta + price
        if (isWide)
          Expanded(
            flex: 4,
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 60), // Add left margin to avoid Nike watermark
                child: SizedBox(
                  width: 400, // Increased width to prevent text cutoff on tablet screens
                  child: _HeroMeta(
                    selectedShoe: selectedShoe,
                    isDarkMode: isDarkMode,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _JustDoItText extends StatelessWidget {
  final bool isDarkMode;
  
  const _JustDoItText({required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 768;
    final isPortrait = screenHeight > screenWidth;
    
    final fontSize = isPortrait ? 64.0 : (isMobile ? 60.0 : 120.0);
    
    final base = GoogleFonts.interTight(
      fontWeight: FontWeight.w700,
      letterSpacing: isPortrait ? 1.5 : (isMobile ? 1.0 : 2.0),
      height: isPortrait ? 0.85 : 1.02,
    );
    return Column(
      crossAxisAlignment: isPortrait ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Text('JUST', style: base.copyWith(
          fontSize: fontSize, 
          color: isDarkMode ? Colors.white : Colors.black
        )),
        SizedBox(height: isPortrait ? 3 : (isMobile ? 3 : 6)),
        Text('DO', style: base.copyWith(
          fontSize: fontSize, 
          color: isDarkMode ? Colors.white : Colors.black
        )),
        SizedBox(height: isPortrait ? 3 : (isMobile ? 3 : 6)),
        Text(
          'IT.',
          style: base.copyWith(
            fontSize: fontSize, 
            color: isDarkMode 
                ? Colors.white.withOpacity(.92)
                : Colors.black.withOpacity(.92)
          ),
        ),
      ],
    );
  }
}

class _HeroShoe extends StatelessWidget {
  final String asset;
  final int selectedShoeIndex;
  final String selectedCategory;
  
  const _HeroShoe({
    required this.asset,
    required this.selectedShoeIndex,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 768;
    final isPortrait = screenHeight > screenWidth;
    
    return Center(
      child: Transform.translate(
        offset: isPortrait 
            ? const Offset(-10, -10) 
            : (isMobile ? const Offset(-20, -20) : const Offset(-50, -50)),
        child: Transform.scale(
          scale: isPortrait ? 0.9 : (isMobile ? 0.8 : 1.0),
          child: Transform.rotate(
            angle: -0.4,
            child: SizedBox(
              width: isPortrait ? 500 : (isMobile ? 600 : 850),
              height: isPortrait ? 380 : (isMobile ? 450 : 650),
              child: FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: isPortrait ? 500 : (isMobile ? 600 : 850),
                    maxHeight: isPortrait ? 380 : (isMobile ? 450 : 650),
                    minWidth: isPortrait ? 500 : (isMobile ? 600 : 850),
                    minHeight: isPortrait ? 380 : (isMobile ? 450 : 650),
                  ),
                  child: Hero(
                    tag: 'shoe_${selectedShoeIndex}_${selectedCategory.toLowerCase()}',
                    child: Image.asset(
                      asset,
                      fit: BoxFit.contain,
                      width: isPortrait ? 500 : (isMobile ? 600 : 850),
                      height: isPortrait ? 380 : (isMobile ? 450 : 650),
                      errorBuilder: (_, __, ___) {
                        return Container(
                          height: isPortrait ? 380 : (isMobile ? 450 : 650),
                          width: isPortrait ? 500 : (isMobile ? 600 : 850),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.02),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white12),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Put a transparent PNG at:\n$asset',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white.withOpacity(.6), fontSize: 14),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _GlowHalo extends StatelessWidget {
  const _GlowHalo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 520,
      height: 520,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Color(0x3327C1FF), Colors.transparent],
          stops: [0.0, 1.0],
        ),
      ),
    );
  }
}

class _HeroMeta extends StatelessWidget {
  final ShoeData selectedShoe;
  final bool isDarkMode;
  
  const _HeroMeta({
    required this.selectedShoe,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 768;
    final isPortrait = screenHeight > screenWidth;
    final isTablet = screenWidth >= 768 && screenWidth < 1024; // iPad detection
    
    final titleStyle = GoogleFonts.inter(
      fontSize: isPortrait ? 16 : (isMobile ? 24 : (isTablet ? 20 : 32)),
      fontWeight: FontWeight.w800,
      letterSpacing: isPortrait ? 2.5 : (isMobile ? 6.0 : (isTablet ? 4.0 : 8.0)),
      color: isDarkMode 
          ? Colors.white.withOpacity(.95)
          : Colors.black.withOpacity(.95),
      height: 1.1,
    );
    final subtitleStyle = GoogleFonts.inter(
      fontSize: isPortrait ? 11 : (isMobile ? 16 : (isTablet ? 14 : 20)),
      fontWeight: FontWeight.w600,
      letterSpacing: isPortrait ? 1.5 : (isMobile ? 3.0 : (isTablet ? 2.0 : 4.0)),
      color: isDarkMode 
          ? Colors.white.withOpacity(.85)
          : Colors.black.withOpacity(.85),
    );
    final priceStyle = GoogleFonts.inter(
      fontSize: isPortrait ? 26 : (isMobile ? 36 : (isTablet ? 30 : 48)),
      fontWeight: FontWeight.w700,
      color: isDarkMode ? Colors.white : Colors.black,
      letterSpacing: isPortrait ? 0.8 : (isTablet ? 1.0 : 2.0),
    );
    final caption = GoogleFonts.inter(
      color: isDarkMode 
          ? Colors.white.withOpacity(.7)
          : Colors.black.withOpacity(.7),
      fontSize: isPortrait ? 10 : (isMobile ? 12 : (isTablet ? 11 : 14)),
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
    );

    return Container(
      constraints: isPortrait 
          ? BoxConstraints(maxHeight: 300, minHeight: 220) 
          : (isTablet ? BoxConstraints(maxHeight: 280, minHeight: 200) : null),
      height: isPortrait ? null : (isMobile ? 300 : (isTablet ? null : 400)),
      padding: EdgeInsets.all(isPortrait ? 16 : (isMobile ? 24 : (isTablet ? 10 : 32))),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(isPortrait ? 16 : (isTablet ? 16 : 24)),
        border: Border.all(
          color: isDarkMode 
              ? Colors.white.withOpacity(.15)
              : Colors.black.withOpacity(.15),
          width: isPortrait ? 1.5 : 1,
        ),
        boxShadow: isPortrait ? [
          BoxShadow(
            color: isDarkMode 
                ? Colors.black.withOpacity(.3)
                : Colors.grey.withOpacity(.1),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ] : null,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(selectedShoe.title, style: titleStyle),
            SizedBox(height: isPortrait ? 3 : (isTablet ? 2 : 8)),
            Text(selectedShoe.subtitle, style: subtitleStyle),
            SizedBox(height: isPortrait ? 4 : (isTablet ? 3 : 8)),
            // Star rating
            Row(
              children: List.generate(
                5,
                (i) => Icon(
                  Icons.star,
                  size: isPortrait ? 16 : (isMobile ? 20 : (isTablet ? 16 : 28)),
                  color: i < selectedShoe.rating
                      ? Colors.orange.shade400
                      : (isDarkMode 
                          ? Colors.white.withOpacity(.35)
                          : Colors.black.withOpacity(.35)),
                ),
              ),
            ),
            SizedBox(height: isPortrait ? 6 : (isTablet ? 4 : 24)),
            Text('\$${selectedShoe.price}', style: priceStyle),
            SizedBox(height: isPortrait ? 4 : (isTablet ? 3 : 16)),
            Container(
              width: isPortrait ? 60 : (isTablet ? 60 : 80),
              height: isTablet ? 2 : 3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.cyan],
                ),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            SizedBox(height: isPortrait ? 4 : (isTablet ? 4 : 20)),
            Text(
              selectedShoe.description, 
              style: caption,
              overflow: TextOverflow.visible,
              maxLines: isTablet ? 2 : 3,
            ),
          ],
        ),
      ),
    );
  }
}

/// ===== CAROUSEL =====
class _BottomCarousel extends StatelessWidget {
  final List<ShoeData> shoeData;
  final int selectedIndex;
  final Function(int) onShoeSelected;
  final bool isDarkMode;
  final String selectedCategory;
  
  const _BottomCarousel({
    required this.shoeData,
    required this.selectedIndex,
    required this.onShoeSelected,
    required this.isDarkMode,
    required this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isMobile = screenWidth < 768;
    final isPortrait = screenHeight > screenWidth;
    
    return SizedBox(
      height: isPortrait ? 120 : (isMobile ? 140 : 160),
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: isPortrait ? 12 : (isMobile ? 16 : 24)),
          itemCount: shoeData.length,
          separatorBuilder: (_, __) => SizedBox(width: isPortrait ? 12 : (isMobile ? 16 : 22)),
          itemBuilder: (_, i) => _ProductCard(
            data: shoeData[i],
            isSelected: i == selectedIndex,
            onTap: () => onShoeSelected(i),
            isDarkMode: isDarkMode,
            index: i,
            category: selectedCategory,
            isMobile: isMobile,
            isPortrait: isPortrait,
          ),
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
        ),
      ),
    );
  }
}

class _ProductCard extends StatelessWidget {
  final ShoeData data;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isDarkMode;
  final int index;
  final String category;
  final bool isMobile;
  final bool isPortrait;
  
  const _ProductCard({
    required this.data,
    required this.isSelected,
    required this.onTap,
    required this.isDarkMode,
    required this.index,
    required this.category,
    this.isMobile = false,
    this.isPortrait = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isPortrait ? 200 : (isMobile ? 240 : 280),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(isPortrait ? 16 : (isMobile ? 18 : 22)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              padding: EdgeInsets.all(isPortrait ? 10 : (isMobile ? 12 : 16)),
              decoration: BoxDecoration(
                color: isSelected 
                    ? (isDarkMode ? Colors.white.withOpacity(.12) : Colors.black.withOpacity(.12))
                    : (isDarkMode ? Colors.white.withOpacity(.06) : Colors.black.withOpacity(.06)),
                border: Border.all(
                  color: isSelected 
                      ? Colors.blue.withOpacity(.4)
                      : (isDarkMode ? Colors.white.withOpacity(.08) : Colors.black.withOpacity(.08)),
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(isPortrait ? 16 : (isMobile ? 18 : 22)),
                boxShadow: [
                  BoxShadow(
                    color: isDarkMode 
                        ? Colors.black.withOpacity(.35)
                        : Colors.grey.withOpacity(.35),
                    offset: const Offset(0, 12),
                    blurRadius: 30,
                    spreadRadius: -6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // shoe thumb
                  SizedBox(
                    width: isPortrait ? 65 : (isMobile ? 80 : 100),
                    height: isPortrait ? 65 : (isMobile ? 80 : 100),
                    child: Transform.rotate(
                      angle: -0.4,
                      child: Hero(
                        tag: 'shoe_${index}_${category.toLowerCase()}',
                        child: Image.asset(
                          data.cardAsset,
                          fit: BoxFit.contain,
                          errorBuilder: (_, __, ___) => Icon(
                            Icons.image_not_supported_outlined,
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: isPortrait ? 8 : (isMobile ? 10 : 14)),
                  // meta
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.interTight(
                            fontSize: isPortrait ? 9 : (isMobile ? 11 : 13),
                            fontWeight: FontWeight.w700,
                            height: 1.1,
                            letterSpacing: .5,
                            color: isSelected 
                                ? (isDarkMode ? Colors.white : Colors.black)
                                : (isDarkMode ? Colors.white.withOpacity(.9) : Colors.black.withOpacity(.9)),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '\$${data.price}',
                          style: TextStyle(
                            fontSize: isPortrait ? 8 : (isMobile ? 10 : 12),
                            letterSpacing: .3,
                            color: isSelected 
                                ? Colors.blue.shade300 
                                : (isDarkMode ? Colors.white70 : Colors.black54),
                            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          children: List.generate(
                            5,
                            (i) => Icon(
                              Icons.star,
                              size: isPortrait ? 8 : (isMobile ? 10 : 12),
                              color: i < data.rating
                                  ? (isSelected 
                                      ? Colors.orange 
                                      : (isDarkMode ? Colors.white : Colors.black))
                                  : (isDarkMode 
                                      ? Colors.white.withOpacity(.35)
                                      : Colors.black.withOpacity(.35)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// ===== DECOR / PAINTERS =====
class _RadialBackdrop extends StatelessWidget {
  final bool isDarkMode;
  
  const _RadialBackdrop({required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 2.0,
            center: const Alignment(0, -0.6),
            colors: isDarkMode 
                ? [const Color(0xFF181A1F), const Color(0xFF0F1013)]
                : [const Color(0xFFE8E8E8), const Color(0xFFF5F5F5)],
          ),
        ),
      ),
    );
  }
}