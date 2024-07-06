import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather/additional_info_item.dart';
import 'package:weather/hourly_forecast_item.dart';
class WeatherScren extends StatelessWidget {
  const WeatherScren({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar( 
    title:const Text("Weather App",
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    ),
    centerTitle: true,
    actions: [
      IconButton(onPressed:(){},
       icon:const Icon(Icons.refresh)
      ),
    ],
   ),
   body:Padding(
     padding:const EdgeInsets.all(16.0),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //main card
     
       SizedBox(
        width: double.infinity,
        //if we have only width and heigth then we use sizedbox but if we are specifing color borderradius then we use container
        //card has its own elevation,it give 3 D visual
           child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),

            child:ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX:10,sigmaY:10),
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child:  Column(
                    children: [
                      Text("300 K",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 16),
                      Icon(Icons.cloud,size:64),
                      SizedBox(height: 16),
                      Text("Rain",
                      style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           ),
         ),
         const SizedBox(height: 20),
         const Text("Weather Forecast",
         style:TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
         ),
         ),
         const SizedBox(height: 16 ),
        //  singlechildscrollview is scrollable only in vertical .for scrolling horizontal we have to mention it properties
         const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
            children: [
              //  Card(
              //     elevation: 6,
              //     child: Container(
              //       width: 100,
              //      padding: const EdgeInsets.all(8.0),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15)
              //       ),
                    // child:const Column(
                    //   children: [
                //       Text("09:00",
                //       style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                //       ),
                //       SizedBox(height: 8),
                //       Icon(Icons.cloud,size: 32),
                //       SizedBox(height: 8,),
                //       Text("301.17") 
                //     ],
                //     ),
                //   )
                // ),
                 HourlyForecastItem(
                  time:"00:00",
                  icon:Icons.cloud,
                  temperature: "301.22",
                ),
                 HourlyForecastItem(
                   time:"03:00",
                  icon:Icons.sunny,
                  temperature: "300.52",
                ),
                 HourlyForecastItem(
                   time:"06:00",
                  icon:Icons.cloud,
                  temperature: "301.22",
                ),
                HourlyForecastItem(
                   time:"09:00",
                  icon:Icons.sunny,
                  temperature: "302.52",
                ),
                 HourlyForecastItem(
                   time:"10:00",
                  icon:Icons.cloud,
                  temperature: "301.22",
                ),
                 HourlyForecastItem(
                   time:"12:00",
                  icon:Icons.sunny,
                  temperature: "304.52",
                ),
            ],
                     ),
          ),
         const SizedBox(height: 20),
         const Text("Additional Information",
         style:TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
         ),
         ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdditionalInfoItem(
              icon:Icons.water_drop,
              label:"Humidity",
              value:"91",
            ),
            AdditionalInfoItem(
              icon:Icons.air,
              label:"Wind Speed",
              value:"7.5",
            ),
            AdditionalInfoItem(
              icon:Icons.beach_access,
              label:"pressure",
              value:"1000",
            ),
          ],
        )
      ],
     ),  
   )
    );
  }
}

