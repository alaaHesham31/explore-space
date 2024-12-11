import 'package:explore_space/planet_details_widget.dart';
import 'package:explore_space/planet_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Planet> planets = [
    Planet(
      name: 'Mercury',
      image: 'assets/images/mercury.png',
      about: 'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun\'s magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
      title: 'Mercury: The Closest Planet',
      distance: '57,909,227',
      lengthOfDay: '1,407.60 ',
      orbitalPeriod: '0.24 ',
      radius: '2,439.7 ',
      mass: '3.3011 × 10^23 ',
      gravity: '3.7',
      surface: '7.48 × 10⁷ ',
      model: 'assets/3d_models/mercury.glb'
    ),
    Planet(
      name: 'Venus',
      image: 'assets/images/venus.png',
      about: 'Venus is often referred to as Earth\'s twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.',
      title: 'Venus: Earth\'s Toxic Twin',
      distance: '108,209,072 ',
      lengthOfDay: '5,832.20 ',
      orbitalPeriod: '0.62  ',
      radius: '6,051.8 ',
      mass: '4.867 × 10^24 ',
      gravity: '8.87 ',
      surface: '4.60 × 10⁸ ',
      model: 'assets/3d_models/venus.glb'
    ),
    Planet(
      name: 'Earth',
      image: 'assets/images/earth.png',
      about: 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
      title: 'Earth: Our Blue Marble',
      distance: '149,598,026',
      lengthOfDay: '23.93 ',
      orbitalPeriod: '1 ',
      radius: '6,371 ',
      mass: '5.972 × 10^24 ',
      gravity: '9.81 m/s²',
      surface: '5.10 × 10⁸ ',
        model: 'assets/3d_models/earth.glb'
    ),
    Planet(
      name: 'Mars',
      image: 'assets/images/mars.png',
      about: 'Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA\'s Perseverance rover is currently searching for signs of ancient microbial life on the planet\'s surface.',
      title: 'Mars: The Red Planet',
      distance: '227,943,824',
      lengthOfDay: '24.62 ',
      orbitalPeriod: '1.88 ',
      radius: '3,389.5 ',
      mass: '6.4171 × 10^23 ',
      gravity: '3.71 ',
      surface: '1.45 × 10⁸ ',
      model: 'assets/3d_models/mars.glb'
    ),
    Planet(
      name: 'Jupiter',
      image: 'assets/images/jupiter.png',
      about: 'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
      title: 'Jupiter: The Gas Giant',
      distance: '778,547,669 ',
      lengthOfDay: '9.9 ',
      orbitalPeriod: '11.86 ',
      radius: '69,911 ',
      mass: '1.898 × 10^27 ',
      gravity: '24.79 ',
      surface: '6.21 × 10¹⁵ ',
       model: 'assets/3d_models/jupiter.glb'
    ),
    Planet(
      name: 'Saturn',
      image: 'assets/images/saturn.png',
      about: 'Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn\'s largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.',
      title: 'Saturn: The Ringed Planet',
      distance: '1,426,666,422',
      lengthOfDay: '10.66 ',
      orbitalPeriod: '29.46 ',
      radius: '58,232 ',
      mass: '5.683 × 10^26 ',
      gravity: '10.44 ',
      surface: '4.27 × 10¹⁵  ',
        model: 'assets/3d_models/saturn.glb'
    ),
    Planet(
      name: 'Uranus',
      image: 'assets/images/uranus.png',
      about: 'Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus\'s atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.',
      title: 'Uranus: The Tilted Planet',
      distance: '2,870,990,000',
      lengthOfDay: '17.24 ',
      orbitalPeriod: '84.01  ',
      radius: '25,362 ',
      mass: '8.681 × 10^25 ',
      gravity: '8.69 ',
      surface: '8.1 × 10¹⁵  ',
        model: 'assets/3d_models/uranus.glb'
    ),
    Planet(
      name: 'Neptune',
      image: 'assets/images/neptune.png',
      about: 'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
      title: 'Neptune: The Distant World',
      distance: '4,498,252,900',
      lengthOfDay: '16.11 ',
      orbitalPeriod: '164.8 ',
      radius: '24,622 ',
      mass: '1.024 × 10^26 ',
      gravity: '11.15 ',
      surface: '7.65 × 10¹⁵ ',
        model: 'assets/3d_models/neptune.glb'
    ),
    Planet(
      name: 'Sun',
      image: 'assets/images/sun.png',
      about: 'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun\'s magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
      title: 'The Sun: Our Solar System\'s Star',
      distance: '0',
      lengthOfDay: '0',
      orbitalPeriod: '0',
      radius: '695,700 ',
      mass: '1.989 × 10^30 ',
      gravity: '274 ',
      surface: '6.09 × 10¹² ',
      model: 'assets/3d_models/solar_system.glb'
    ),
  ];



  int currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/explore.png', width: double.infinity, height: 250,),
              Image.asset('assets/images/gredient.png',  width: double.infinity, height: 250,),
              const Positioned(
                top: 50,
                left: 0,
                right: 0,
                child: Text(
                  'Explore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Positioned(
                top: 170,
                left: 20,
                child: Text(
                  'Which planet \nwould you like to explore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),


            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: planets.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      planets[index].image,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEE403D),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                        onPressed: () {
                          if (currentIndex > 0) {
                            currentIndex--;
                            _pageController.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Text(
                      planets[currentIndex].name,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEE403D),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                        onPressed: () {
                          if (currentIndex < planets.length - 1) {
                            currentIndex++;
                            _pageController.animateToPage(
                              currentIndex,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        icon: const Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlanetInfoWidget(
                            planet: planets[currentIndex], // Pass the selected planet
                          ),
                        )
                    );
                  },

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFFEE403D)),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(double.infinity, 60.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Explore ${planets[currentIndex].name}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_forward, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),

    );
  }
}
