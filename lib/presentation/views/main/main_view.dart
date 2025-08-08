import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listfy_app/presentation/views/widgets/all_list.dart';
import 'package:listfy_app/presentation/views/widgets/main_navigation_bar.dart';
import 'package:listfy_app/presentation/views/widgets/search_text_field.dart';
import 'package:listfy_app/presentation/views/widgets/section_card.dart';
import 'package:listfy_app/utils/constants.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: MediaQuery.of(context).size.height * 0.02,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        colors: [Constants.darkPurple, Constants.darkerPurple],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Icon(
                      FontAwesomeIcons.circleUser,
                      color: Constants.lightGray,
                      size: 26,
                    ),
                  ),
                  
                  SizedBox(width: 20),
                  
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello,',
                            style: TextStyle(
                              color: Constants.lightGray,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            'João!',
                            style: TextStyle(
                              color: Constants.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Constants.darkPurple, Constants.darkerPurple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        FontAwesomeIcons.bell,
                        color: Constants.lightGray,
                        size: 20,
                      ),
                    ),
                ],
              ),
                      
              SizedBox(height: 30),
              
              SearchTextField(
                hintText: 'Search',
                onChanged: (value) {
                  // logic here
                },
              ),

              SizedBox(height: 30),

              SectionCard(),

              const SizedBox(height: 30),

              AllLists(
                onViewAllLists: () {
                  // logic here
                },
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: MainNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}