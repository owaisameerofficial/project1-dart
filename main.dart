import 'dart:io';

List<Map<String, dynamic>> domesticJourneys = [];
List<Map<String, dynamic>> internationalJourneys = [];

void main() {
  mainMenu();
}

void mainMenu() {
  print("Main Menu");
  print("Press 1 for 'Quotation and Tour Plan'");
  print("Press 2 for 'Travel Counselor'");
  String select = stdin.readLineSync()!;

  if (select == '1') {
    quotationAndTourPlan();
  } else if (select == '2') {
    var pass = 'smit-dart';
    bool condition = true;
    print('Plz Enter Counselor Key');
    while (condition) {
      var takingPass = stdin.readLineSync();
      if (takingPass == pass) {
        travelCounselor();
        condition = false;
      } else {
        print('plz enter correct password');
      }
    }
  } else {
    print("Invalid choice. Please try again.\n"); //l(\n line break);
    mainMenu();
  }
}
//User Input, While Loop for passward of counselor and if Else

void quotationAndTourPlan() {
  print("Quotation and Tour Plan");
  print("Press 'i' for International Journey");
  print("Press 'd' for Domestic Journey");
  print("Press 'r' to Resume Journey");
  print("Press 'm' for Main");
  String select = stdin.readLineSync()!;

  if (select == 'i') {
    internationalJourney();
  } else if (select == 'd') {
    domesticJourney();
  } else if (select == 'r') {
    resumeJourney();
  } else if (select == 'm') {
    mainMenu();
  } else {
    print("Invalid choice. Please try again.\n");
    quotationAndTourPlan();
  }
}
//User Input and Nested If.

void internationalJourney() {
  print("Please provide the following details:");
  print("Head Passenger Name:");
  var headPassengerName = stdin.readLineSync();

  print("Enter Number of Dependents Under The Age of 2");
  var numberOfDependentsUnderAge2 = int.parse(stdin.readLineSync()!);

  print("Enter Number of Dependents Under The Age of 12");
  var numberOfDependentsUnderAge12 = int.parse(stdin.readLineSync()!);

  print("Enter Number of Dependents Over The Age of 12");
  var numberOfDependentsAboveAge12 = int.parse(stdin.readLineSync()!);

  int totalNumofPassengers = (numberOfDependentsAboveAge12 +
      numberOfDependentsUnderAge12 +
      numberOfDependentsUnderAge2 +
      1);
  print("Total Number of Passengers: $totalNumofPassengers");

  print('Enter a date in yyyy-mm-dd format:');
  String input = stdin.readLineSync()!;
  DateTime startDate = DateTime.parse(input);
   if (startDate.isBefore(DateTime.now())) {
    print('You entered a past date.');
  } else {
    print('You entered: $startDate');
  }

  print('End a date in yyyy-mm-dd format:');
  String input1 = stdin.readLineSync()!;
  DateTime endDate= DateTime.parse(input);
   if (endDate.isBefore(DateTime.now())) {
    print('You entered a past date.');
  } else {
    print('You entered: $endDate');
  }

  print("Enter The Passport Number:");
  var ppNumber = stdin.readLineSync()!;
  var ppInut = ppNumber.substring(ppNumber.length - 4);

  print("Considerable Destinations:");
  var destinations = stdin.readLineSync();

  print("Required Meal Plan; Full Board FB | Half Board HB | Breakfast BB:");
  var mealPlan = stdin.readLineSync();

  print("Provide Email Address:");
  var eAddress = stdin.readLineSync();

  print("Re-enter Last 4 Digits of provided Passport:");
  bool condition = true;
  var savePpNumber;

  while (condition) {
    var digitspp4 = stdin.readLineSync();
    savePpNumber = digitspp4;

    if (ppInut == digitspp4) {
      condition = false;
    } else {
      print("Please re-enter the correct last 4 digits: ");
    }
  }

  print("Press 's' to submit or 'm' to go back to the main menu.");

  String submitdata = stdin.readLineSync()!;

  if (submitdata == 's') {
    Map<String, dynamic> passenger = {
      'Head Passenger Name': headPassengerName,
      'Number of Dependents Under The Age of 2': numberOfDependentsUnderAge2,
      'Number of Dependents Under The Age of 12': numberOfDependentsUnderAge12,
      'Number of Dependents Over The Age of 12': numberOfDependentsAboveAge12,
      'Total Number of Passengers': totalNumofPassengers,
      'Start Date Of Trip': startDate,
      'End Date Of Trip': endDate,
      'Passport Number': ppNumber,
      'Considerable Destinations': destinations,
      'Meal Plan': mealPlan,
      'Email Address': eAddress,
      'Last 4 Digits of Passport': savePpNumber,
    };
    internationalJourneys.add(passenger);
    print("Data submitted successfully!\n");
    print("You'll get responded within 24 working hours via E-mail.!\n");
    mainMenu();
  } else if (submitdata == 'm') {
    mainMenu();
  } else {
    print("Invalid choice. Please try again.\n");
    internationalJourney();
  }
}
//Used Sub-String Method for password, List.add (map), while loop,

void domesticJourney() {
  print("Please provide the following details:");
  print("Head Passenger Name:");
  var headPassengerName = stdin.readLineSync();

  print("Enter Number of Dependents Under The Age of 2");
  var numberOfDependentsUnderAge2 = int.parse(stdin.readLineSync()!);

  print("Enter Number of Dependents Under The Age of 12");
  var numberOfDependentsUnderAge12 = int.parse(stdin.readLineSync()!);

  print("Enter Number of Dependents Over The Age of 12");
  var numberOfDependentsAboveAge12 = int.parse(stdin.readLineSync()!);

  int totalNumofPassengers = (numberOfDependentsAboveAge12 +
      numberOfDependentsUnderAge12 +
      numberOfDependentsUnderAge2 +
      1);
  print("Total Number of Passengers: $totalNumofPassengers");

  print('Enter a date in yyyy-mm-dd format:');
  String input = stdin.readLineSync()!;
  DateTime startDate = DateTime.parse(input);
   if (startDate.isBefore(DateTime.now())) {
    print('You entered a past date.');
  } else {
    print('You entered: $startDate');
  }

  print('End date in yyyy-mm-dd format:');
  String input1 = stdin.readLineSync()!;
  DateTime endDate= DateTime.parse(input);
   if (endDate.isBefore(DateTime.now())) {
    print('You entered a past date.');
  } else {
    print('You entered: $endDate');
  }



  print("Enter the CNIC Number:");
  var idNumber = stdin.readLineSync()!;
  var last4Digits = idNumber.substring(idNumber.length - 4, idNumber.length);

  print("Considerable Destinations:");
  var destinations = stdin.readLineSync();

  print("Required Meal Plan; Full Board FB | Half Board HB | Breakfast BB:");
  var mealPlan = stdin.readLineSync();

  print("Provide Email Address:");
  var eAddress = stdin.readLineSync();

  print("Re-enter the last 4 digits of the provided CNIC:");
  bool condition = true;
  var save;

  while (condition) {
    var digitsID4 = stdin.readLineSync();
    save = digitsID4;

    if (last4Digits == digitsID4) {
      condition = false;
    } else {
      print("Please re-enter the correct last 4 digits: ");
    }
  }
  print("Press 's' to submit or 'm' to go back to the main menu.");

  String submitdata = stdin.readLineSync()!;

  if (submitdata == 's') {
    Map<String, dynamic> passenger = {
      'Head Passenger Name': headPassengerName,
      'Number of Dependents Under The Age of 2': numberOfDependentsUnderAge2,
      'Number of Dependents Under The Age of 12': numberOfDependentsUnderAge12,
      'Number of Dependents Over The Age of 12': numberOfDependentsAboveAge12,
      'Total Number of Passengers': totalNumofPassengers,
      'Start Date Of Trip': startDate,
      'End Date Of Trip': endDate,
      'CNIC Number': idNumber,
      'Considerable Destinations': destinations,
      'Meal Plan': mealPlan,
      'Email Address': eAddress,
      'Last 4 Digits of CNIC': save,
    };
    domesticJourneys.add(passenger);
    print("Data submitted successfully!\n");
    print("You'll get responded within 24 working hours via E-mail.!\n");

    mainMenu();
  } else if (submitdata == 'm') {
    mainMenu();
  } else {
    print("Invalid choice. Please try again.\n");
    domesticJourney();
  }
}
//Used Sub-String Method for password, List.add (map), while loop,

void travelCounselor() {
  print("Travel Counselor");
  print("Press 'd' for Domestic Journey");
  print("Press 'i' for International Journey");
  print("Print 'm' for Main");

  String select = stdin.readLineSync()!;

  if (select == 'd') {
    displayDomesticJourneys();
  } else if (select == 'i') {
    displayInternationalJourneys();
  } else if (select == 'm') {
    mainMenu();
  } else {
    print("Invalid choice. Please try again.\n");
    travelCounselor();
  }
}

void displayDomesticJourneys() {
  print("Domestic Journeys");
  for (var i = 0; i < domesticJourneys.length; i++) {
    print("Group ${i + 1}:");
    print("Head Passenger Name: ${domesticJourneys[i]['Head Passenger Name']}");
    print(
        "Kids Under 12 : ${domesticJourneys[i]['Number of Dependents Over The Age of 12']}");
    print(
        "Passenger above 12 : ${domesticJourneys[i]['Number of Dependents Under The Age of 12']}");
    print(
        "Infant(s) : ${domesticJourneys[i]['Number of Dependents Under The Age of 2']}");
    print(
        "Total Number of Passengers: ${domesticJourneys[i]['Total Number of Passengers']}");
    print("Start Date Of Trip: ${domesticJourneys[i]['Start Date Of Trip']}");
    print("End Date Of Trip: ${domesticJourneys[i]['End Date Of Trip']}");
    print(
        "Considerable Destinations: ${domesticJourneys[i]['Considerable Destinations']}");
    print("Meal Plan: ${domesticJourneys[i]['Meal Plan']}");
    print("Email Address: ${domesticJourneys[i]['Email Address']}");
    print("");
    print('press g for go back:');
    print('press anything for exit:');
    var takeInput = stdin.readLineSync();
    if (takeInput == "g") {
      travelCounselor();
    } else {
      print('program is exited');
    }
  }
}
// for loop

void displayInternationalJourneys() {
  print("International Journeys");
  for (var i = 0; i < internationalJourneys.length; i++) {
    print("Group ${i + 1}:");
    print(
        "Head Passenger Name: ${internationalJourneys[i]['Head Passenger Name']}");
    print(
        "Kids Under 12 : ${internationalJourneys[i]['Number of Dependents Over The Age of 12']}");
    print(
        "Passenger above 12 : ${internationalJourneys[i]['Number of Dependents Under The Age of 12']}");
    print(
        "Infant(s) : ${internationalJourneys[i]['Number of Dependents Under The Age of 2']}");
    print(
        "Total Number of Passengers: ${internationalJourneys[i]['Total Number of Passengers']}");
    print(
        "Start Date Of Trip: ${internationalJourneys[i]['Start Date Of Trip']}");
    print("End Date Of Trip: ${internationalJourneys[i]['End Date Of Trip']}");
    print(
        "Considerable Destinations: ${internationalJourneys[i]['Considerable Destinations']}");
    print("Meal Plan: ${internationalJourneys[i]['Meal Plan']}");
    print("Email Address: ${internationalJourneys[i]['Email Address']}");
    print("");
    print('press g for go back:');
    print('press anything for exit:');
    var takeInput = stdin.readLineSync();
    if (takeInput == "g") {
      travelCounselor();
    } else {
      print('program is exited');
    }
  }
}

void resumeJourney() {
  print("Resume Journey");
  print("Press 'd' to view stored data for Domestic Journey");
  print("Press 'i' to view stored data for International Journey");

  String choice = stdin.readLineSync()!;

  if (choice == 'd') {
    print("Enter the last 4 digits of the provided CNIC:");
    String digitsID4 = stdin.readLineSync()!;
    displayStoredDomesticJourney(digitsID4);
  } else if (choice == 'i') {
    print("Enter the last 4 digits of the provided Passport:");
    String digitsPP4 = stdin.readLineSync()!;
    displayStoredInternationalJourney(digitsPP4);
  } else {
    print("Invalid choice. Please try again.\n");
    resumeJourney();
  }
}

void displayStoredDomesticJourney(String digitsID4) {
  bool found = false;
  for (var journey in domesticJourneys) {
    if (journey['Last 4 Digits of CNIC'] == digitsID4) {
      print("Stored Data for Domestic Journey:");
      print("Head Passenger Name: ${journey['Head Passenger Name']}");
      print(
          "Kids Under 12 : ${journey['Number of Dependents Over The Age of 12']}");
      print(
          "Passenger above 12 : ${journey['Number of Dependents Under The Age of 12']}");
      print(
          "Infant(s) : ${journey['Number of Dependents Under The Age of 2']}");
      print(
          "Total Number of Passengers: ${journey['Total Number of Passengers']}");
      print("Start Date Of Trip: ${journey['Start Date Of Trip']}");
      print("End Date Of Trip: ${journey['End Date Of Trip']}");
      print(
          "Considerable Destinations: ${journey['Considerable Destinations']}");
      print("Meal Plan: ${journey['Meal Plan']}");
      print("Email Address: ${journey['Email Address']}");
      print("");
      found = true;
      print('Press m for Main menu');
      print("Press e for exit");
      var takingInput = stdin.readLineSync();
      if (takingInput == 'm') {
        mainMenu();
      } else if (takingInput == "e") {
        break;
      }
    }
  }
  if (!found) {
    print("No stored data found for the provided CNIC digits.\n");
    quotationAndTourPlan();
  }
}

void displayStoredInternationalJourney(String digitsPP4) {
  bool found = false;
  for (var journey in internationalJourneys) {
    if (journey['Last 4 Digits of Passport'] == digitsPP4) {
      print("Stored Data for International Journey:");
      print("Head Passenger Name: ${journey['Head Passenger Name']}");
      print(
          "Kids Under 12 : ${journey['Number of Dependents Over The Age of 12']}");
      print(
          "Passenger above 12 : ${journey['Number of Dependents Under The Age of 12']}");
      print(
          "Infant(s) : ${journey['Number of Dependents Under The Age of 2']}");
      print(
          "Total Number of Passengers: ${journey['Total Number of Passengers']}");
      print("Start Date Of Trip: ${journey['Start Date Of Trip']}");
      print("End Date Of Trip: ${journey['End Date Of Trip']}");
      print(
          "Considerable Destinations: ${journey['Considerable Destinations']}");
      print("Meal Plan: ${journey['Meal Plan']}");
      print("Email Address: ${journey['Email Address']}");
      print("");
      found = true;
      print('Press m for Main menu');
      print("Press e for exit");
      var takingInput = stdin.readLineSync();
      if (takingInput == 'm') {
        mainMenu();
      } else if (takingInput == "e") {
        break;
      }
    }
  }
  if (!found) {
    print("No stored data found for the provided Passport digits.\n");
    quotationAndTourPlan();
  }
}