import 'package:flutter/material.dart';
import 'package:invitor/data_collection_screen/event_data_collection_portion/birthday/men_birthday.dart';
import 'package:invitor/data_collection_screen/event_data_collection_portion/party/happy_new_year.dart';
import 'package:invitor/data_collection_screen/event_data_collection_portion/wedding/bridal_shower.dart';
import 'package:invitor/data_collection_screen/event_data_collection_portion/wedding/wedding_invitation.dart';
import 'package:invitor/home_screen/home_behavior.dart';
import 'event_data_collection_portion/announcements/engagement.dart';
import 'event_data_collection_portion/announcements/graduation.dart';
import 'event_data_collection_portion/announcements/memorial.dart';
import 'event_data_collection_portion/announcements/moving.dart';
import 'event_data_collection_portion/announcements/pregnancy.dart';
import 'event_data_collection_portion/announcements/save_the_marriage_date.dart';
import 'event_data_collection_portion/announcements/wedding.dart';
import 'event_data_collection_portion/babies_and_kids/babies_and_kids_baby_birthday.dart';
import 'event_data_collection_portion/babies_and_kids/babies_and_kids_first_birthday.dart';
import 'event_data_collection_portion/babies_and_kids/babies_and_kids_kids_birthday.dart';
import 'event_data_collection_portion/babies_and_kids/baby_shower.dart';
import 'event_data_collection_portion/babies_and_kids/baby_sprinkle.dart';
import 'event_data_collection_portion/babies_and_kids/baptism_and_christening.dart';
import 'event_data_collection_portion/announcements/birth.dart';
import 'event_data_collection_portion/babies_and_kids/birth_announcements.dart';
import 'event_data_collection_portion/babies_and_kids/first_communion.dart';
import 'event_data_collection_portion/babies_and_kids/gender_reveal.dart';
import 'event_data_collection_portion/babies_and_kids/sip_and_see.dart';
import 'event_data_collection_portion/birthday/1st_birthday.dart';
import 'event_data_collection_portion/birthday/baby_birthday.dart';
import 'event_data_collection_portion/birthday/kids_birthday.dart';
import 'event_data_collection_portion/birthday/women_birthday.dart';
import 'event_data_collection_portion/party/anniversary.dart';
import 'event_data_collection_portion/party/bbq_party.dart';
import 'event_data_collection_portion/party/christmas_party.dart';
import 'event_data_collection_portion/party/cocktail_party.dart';
import 'event_data_collection_portion/party/dinner_party.dart';
import 'event_data_collection_portion/party/family_reunion.dart';
import 'event_data_collection_portion/party/graduation_party.dart';
import 'event_data_collection_portion/party/housewarming.dart';
import 'event_data_collection_portion/party/professional_events.dart';
import 'event_data_collection_portion/party/retirement_party.dart';
import 'event_data_collection_portion/party/sleepover_party.dart';
import 'event_data_collection_portion/party/sports_and_games.dart';
import 'event_data_collection_portion/party/summer_and_pool.dart';
import 'event_data_collection_portion/wedding/bachelor_party.dart';
import 'event_data_collection_portion/wedding/engagement_party.dart';
import 'event_data_collection_portion/wedding/rehearsal_dinner.dart';
import 'event_data_collection_portion/wedding/save_the_date.dart';

Widget fetchDataCollectionPortion({required String mainCategoryTitle, required String subCategoryTitle}) {
  switch (mainCategoryTitle) {
    case 'Wedding':
      {
        return fetchWeddingDataCollectionPortion(
          subCategoryTitle: subCategoryTitle,
        );
      }
    case 'Birthday':
      {
        return fetchBirthdayDataCollectionPortion(
          subCategoryTitle: subCategoryTitle,
        );
      }
    case 'Party':
      {
        return fetchPartyDataCollectionPortion(
          subCategoryTitle: subCategoryTitle,
        );
      }
    case 'Babies & Kids':
      {
        return fetchBabiesAndKidsDataCollectionPortion(
          subCategoryTitle: subCategoryTitle,
        );
      }
    case 'Announcements': {
      return fetchAnnouncementsDataCollectionPortion(subCategoryTitle: subCategoryTitle,);
    }
    default:
      {
        return Container(
          color: Colors.red,
          child: const Center(
              child: Text(
            'Coming soon...!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        );
      }
  }
}

Widget fetchWeddingDataCollectionPortion({required String subCategoryTitle}) {
  switch (subCategoryTitle) {
    case 'Wedding Invitations':
      {
        return const WeddingInvitation();
      }
    case 'Bridal Shower':
      {
        return const BridalShower();
      }
    case 'Bachelor Party':
      {
        return const BachelorParty();
      }
    case 'Save The Date':
      {
        return const SaveTheDate();
      }
    case 'Engagement Party':
      {
        return const EngagementParty();
      }
    case 'Rehearsal Dinner':
      {
        return const RehearsalDinner();
      }
    default:
      {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
            'Coming soon...!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        );
      }
  }
}

Widget fetchBirthdayDataCollectionPortion({required String subCategoryTitle}) {
  switch (subCategoryTitle) {
    case '1st Birthday':
      {
        return const FirstBirthday();
      }
    case 'Baby Birthday':
      {
        return const BabyBirthday();
      }
    case 'Kids Birthday':
      {
        return const KidsBirthday();
      }
    case 'Men\'s Birthday':
      {
        return const MenBirthday();
      }
    case 'Women\'s Birthday':
      {
        return const WomanBirthday();
      }
    default:
      {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
            'Coming soon...!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        );
      }
  }
}

Widget fetchPartyDataCollectionPortion({required String subCategoryTitle}) {
  switch (subCategoryTitle) {
    case 'Anniversary':
      {
        return const Anniversary();
      }
    case 'BBQ Party':
      {
        return const BBQParty();
      }
    case 'Christmas Party':
      {
        return const ChristmasParty();
      }
    case 'Cocktail Party':
      {
        return const CocktailParty();
      }
    case 'Dinner Party':
      {
        return const DinnerParty();
      }
    case 'Family Reunion':
      {
        return const FamilyReunion();
      }
    case 'Graduation Party':
      {
        return const GraduationParty();
      }
    case 'Housewarming':
      {
        return const Housewarming();
      }
    case 'Retirement Party':
      {
        return const RetirementParty();
      }
    case 'Sleepover Party':
      {
        return const SleepoverParty();
      }
    case 'Sports & Games':
      {
        return const SportsAndGames();
      }
    case 'Summer & Pool':
      {
        return const SummerAndPool();
      }
    case 'Professional Events':
      {
        return const ProfessionalEvents();
      }
      case 'Happy New Year':
      {
        return const HappyNewYear();
      }
    default:
      {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
            'Coming soon...!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        );
      }
  }
}

Widget fetchBabiesAndKidsDataCollectionPortion({required String subCategoryTitle}) {
  switch (subCategoryTitle) {
    case '1st Birthday':
      {
        return const BabiesAndKidsFirstBirthday();
      }
    case 'Birth Announcements':
      {
        return const BirthAnnouncements();
      }
    case 'Baby Birthday':
      {
        return const BabiesAndKidsBabyBirthday();
      }
    case 'Baby Shower':
      {
        return const BabyShower();
      }
    case 'Baby Sprinkle':
      {
        return const BabySprinkle();
      }
    case 'Baptism & Christening':
      {
        return const BaptismAndChristening();
      }
    case 'First Communion':
      {
        return const FirstCommunion();
      }
    case 'Gender Reveal':
      {
        return const GenderReveal();
      }
    case 'Kids Birthday':
      {
        return const BabiesAndKidsKidsBirthday();
      }
    case 'Sip & See':
      {
        return const SipAndSee();
      }
    default:
      {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
            'Coming soon...!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
        );
      }
  }
}

Widget fetchAnnouncementsDataCollectionPortion({required String subCategoryTitle}) {

  switch (subCategoryTitle) {
    case 'Birth':
      {
        return const Birth();
      }
    case 'Engagement':
      {
        return const Engagement();
      }
    case 'Graduation':
      {
        return const Graduation();
      }
    case 'Memorial':
      {
        return const Memorial();
      }
    case 'Moving':
      {
        return const Moving();
      }
    case 'Pregnancy':
      {
        return const Pregnancy();
      }
    case 'Save the date':
      {
        return const SaveTheMarriageDate();
      }
    case 'Wedding':
      {
        return const Wedding();
      }
    default:
      {
        return Container(
          margin: EdgeInsets.only(bottom: screenHeight! * 0.008),
          color: Colors.red,
          width: screenWidth! * 0.75,
          child: const Center(
              child: Text(
                'Coming soon...!',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        );
      }
  }
}