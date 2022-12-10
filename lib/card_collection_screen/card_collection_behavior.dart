import 'package:invitor/splash_screen/splash_behavior.dart';

class CardCollectionBehavior {

  List<String> gridViewCardsImagePathList = [];


  void selectCardCollectionList() {
    gridViewCardsImagePathList.clear();
    String completeCategory = '${mainCategoryTitle}_$subCategoryTitle';
    switch(completeCategory) {
      case 'Wedding_Wedding Invitations': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_two.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_three.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_four.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_five.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_six.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_seven.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eight.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_nine.jpg',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_ten.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_eleven.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_twelve.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_thirteen.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_fourteen.png',
          'assets/images/wedding/wedding_invitations/wedding_wedding_invitations_one.jpg',
        ];
        break;
      }

      case 'Wedding_Bridal Shower': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_one.png',
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_two.png',
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_three.png',
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_four.png',
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_five.png',
          'assets/images/wedding/bridal_shower/wedding_bridal_shower_six.png',
        ];
        break;
      }

      case 'Wedding_Engagement Party': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/engagement_party/wedding_engagement_party_one.png',
          'assets/images/wedding/engagement_party/wedding_engagement_party_two.jpg',
          'assets/images/wedding/engagement_party/wedding_engagement_party_three.png',
          'assets/images/wedding/engagement_party/wedding_engagement_party_four.png',
          'assets/images/wedding/engagement_party/wedding_engagement_party_five.png',
          'assets/images/wedding/engagement_party/wedding_engagement_party_six.png',
          'assets/images/wedding/engagement_party/wedding_engagement_party_seven.jpg',
        ];
        break;
      }

      case 'Wedding_Bachelor Party': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/bachelor_party/wedding_bachelor_party_one.png',
          'assets/images/wedding/bachelor_party/wedding_bachelor_party_two.png',
          'assets/images/wedding/bachelor_party/wedding_bachelor_party_three.png',
        ];
        break;
      }

      case 'Wedding_Rehearsal Dinner': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_one.png',
          'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_two.png',
          'assets/images/wedding/rehearsal_dinner/wedding_rehearsal_dinner_three.png',
        ];
        break;
      }

      case 'Wedding_Save The Date': {
        gridViewCardsImagePathList = [
          'assets/images/wedding/save_the_date/wedding_save_the_date_one.png',
          'assets/images/wedding/save_the_date/wedding_save_the_date_two.png',
        ];
        break;
      }

      case 'Birthday_1st Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/birthday/first_birthday/birthday_first_birthday_one.png',
          'assets/images/birthday/first_birthday/birthday_first_birthday_two.png',
          'assets/images/birthday/first_birthday/birthday_first_birthday_three.png',
        ];
        break;
      }

      case 'Birthday_Baby Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/birthday/baby_birthday/birthday_baby_birthday_one.png',
          'assets/images/birthday/baby_birthday/birthday_baby_birthday_two.png',
        ];
        break;
      }

      case 'Birthday_Kids Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/birthday/kids_birthday/birthday_kids_birthday_one.png',
          'assets/images/birthday/kids_birthday/birthday_kids_birthday_two.png',
          'assets/images/birthday/kids_birthday/birthday_kids_birthday_three.png',
        ];
        break;
      }

      case 'Birthday_Men\'s Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/birthday/mens_birthday/birthday_men_birthday_one.png',
          'assets/images/birthday/mens_birthday/birthday_men_birthday_two.png',
        ];
        break;
      }

      case 'Birthday_Women\'s Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/birthday/womens_birthday/birthday_women_birthday_one.png',
          'assets/images/birthday/womens_birthday/birthday_women_birthday_two.png',
          'assets/images/birthday/womens_birthday/birthday_women_birthday_three.png',
        ];
        break;
      }

      case 'Party_Anniversary': {
        gridViewCardsImagePathList = [
          'assets/images/party/anniversary/party_anniversary_one.png',
          'assets/images/party/anniversary/party_anniversary_two.png',
          'assets/images/party/anniversary/party_anniversary_three.png',
        ];
        break;
      }

      case 'Party_BBQ Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/bbq_party/party_bbq_party_one.png',
          'assets/images/party/bbq_party/party_bbq_party_two.png',
        ];
        break;
      }

      case 'Party_Christmas Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/christmas_party/party_christmas_party_one.png',
          'assets/images/party/christmas_party/party_christmas_party_two.png',
          'assets/images/party/christmas_party/party_christmas_party_three.png',
          'assets/images/party/christmas_party/party_christmas_party_four.png',
        ];
        break;
      }

      case 'Party_Cocktail Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/cocktail_party/party_cocktail_party_one.png',
          'assets/images/party/cocktail_party/party_cocktail_party_two.png',
          'assets/images/party/cocktail_party/party_cocktail_party_three.png',
          'assets/images/party/cocktail_party/party_cocktail_party_four.png',
        ];
        break;
      }

      case 'Party_Dinner Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/dinner_party/party_dinner_party_one.png',
          'assets/images/party/dinner_party/party_dinner_party_two.png',
          'assets/images/party/dinner_party/party_dinner_party_three.png',
          'assets/images/party/dinner_party/party_dinner_party_four.png',
          'assets/images/party/dinner_party/party_dinner_party_five.png',
        ];
        break;
      }

      case 'Party_Family Reunion': {
        gridViewCardsImagePathList = [
          'assets/images/party/family_reunion/party_family_reunion_one.png',
          'assets/images/party/family_reunion/party_family_reunion_two.png',
          'assets/images/party/family_reunion/party_family_reunion_three.png',
        ];
        break;
      }

      case 'Party_Graduation Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/graduation_party/party_graduation_party_one.png',
          'assets/images/party/graduation_party/party_graduation_party_two.png',
          'assets/images/party/graduation_party/party_graduation_party_three.png',
        ];
        break;
      }

      case 'Party_Happy New Year': {
        gridViewCardsImagePathList = [
          'assets/images/party/happy_new_year/party_happy_new_year_one.png',
          'assets/images/party/happy_new_year/party_happy_new_year_two.png',
        ];
        break;
      }

      case 'Party_Housewarming': {
        gridViewCardsImagePathList = [
          'assets/images/party/house_warming/party_house_warming_one.png',
          'assets/images/party/house_warming/party_house_warming_two.png',
          'assets/images/party/house_warming/party_house_warming_three.png',
        ];
        break;
      }

      case 'Party_Retirement Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/retirement_party/party_retirement_party_one.png',
          'assets/images/party/retirement_party/party_retirement_party_two.png',
        ];
        break;
      }

      case 'Party_Sleepover Party': {
        gridViewCardsImagePathList = [
          'assets/images/party/sleepover_party/party_sleepover_party_one.png',
          'assets/images/party/sleepover_party/party_sleepover_party_two.png',
        ];
        break;
      }

      case 'Party_Summer & Pool': {
        gridViewCardsImagePathList = [
          'assets/images/party/summer_and_pool/party_summer_and_pool_one.png',
          'assets/images/party/summer_and_pool/party_summer_and_pool_two.png',
          'assets/images/party/summer_and_pool/party_summer_and_pool_three.png',
          'assets/images/party/summer_and_pool/party_summer_and_pool_four.png',
        ];
        break;
      }

      case 'Announcements_Birth': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/birth/announcements_birth_one.png',
          'assets/images/announcements/birth/announcements_birth_two.png',
        ];
        break;
      }

      case 'Announcements_Engagement': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/engagement/announcements_engagement_one.png',
          'assets/images/announcements/engagement/announcements_engagement_two.png',
          'assets/images/announcements/engagement/announcements_engagement_three.png',
        ];
        break;
      }

      case 'Announcements_Graduation': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/graduation/announcements_graduation_one.png',
          'assets/images/announcements/graduation/announcements_graduation_two.png',
          'assets/images/announcements/graduation/announcements_graduation_three.png',
        ];
        break;
      }

      case 'Announcements_Memorial': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/memorial/announcements_memorial_one.png',
          'assets/images/announcements/memorial/announcements_memorial_two.png',
        ];
        break;
      }

      case 'Announcements_Moving': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/moving/announcements_moving_one.png',
          'assets/images/announcements/moving/announcements_moving_two.png',
        ];
        break;
      }

      case 'Announcements_Pregnancy': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/pregnancy/announcements_pregnancy_one.png',
          'assets/images/announcements/pregnancy/announcements_pregnancy_two.png',
        ];
        break;
      }

      case 'Announcements_Save the date': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/save_the_date/announcements_save_the_date_one.png',
          'assets/images/announcements/save_the_date/announcements_save_the_date_two.png',
          'assets/images/announcements/save_the_date/announcements_save_the_date_three.png',
        ];
        break;
      }

      case 'Announcements_Wedding': {
        gridViewCardsImagePathList = [
          'assets/images/announcements/wedding/announcements_wedding_one.png',
          'assets/images/announcements/wedding/announcements_wedding_two.png',
          'assets/images/announcements/wedding/announcements_wedding_three.png',
        ];
        break;
      }

      case 'Babies & Kids_1st Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_one.png',
          'assets/images/babies_and_kids/first_birthday/babies_and_kids_first_birthday_two.png',
        ];
        break;
      }

      case 'Babies & Kids_Baby Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/baby_birthday/babies_and_kids_baby_birthday_one.png',
        ];
        break;
      }

      case 'Babies & Kids_Baby Shower': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_one.png',
          'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_two.png',
          'assets/images/babies_and_kids/baby_shower/babies_and_kids_baby_shower_three.png',
        ];
        break;
      }

      case 'Babies & Kids_Baby Sprinkle': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_one.png',
          'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_two.png',
          'assets/images/babies_and_kids/baby_sprinkle/babies_and_kids_baby_sprinkle_three.png',
        ];
        break;
      }

      case 'Babies & Kids_Baptism & Christening': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_one.png',
          'assets/images/babies_and_kids/baptism_and_christening/babies_and_kids_baptism_and_christening_two.png',
        ];
        break;
      }

      case 'Babies & Kids_First Communion': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_one.png',
          'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_two.png',
          'assets/images/babies_and_kids/first_communion/babies_and_kids_first_communion_three.png',
        ];
        break;
      }

      case 'Babies & Kids_Gender Reveal': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_one.png',
          'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_two.png',
          'assets/images/babies_and_kids/gender_reveal/babies_and_kids_gender_reveal_three.png',
        ];
        break;
      }

      case 'Babies & Kids_Kids Birthday': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/kids_birthday/babies_and_kids_kids_birthday_one.png',
        ];
        break;
      }

      case 'Babies & Kids_Sip & See': {
        gridViewCardsImagePathList = [
          'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_one.png',
          'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_two.png',
          'assets/images/babies_and_kids/sip_and_see/babies_and_kids_sip_and_see_three.png',
        ];
        break;
      }

      default : {
        gridViewCardsImagePathList = [
          'assets/images/no_data_found/no_data_found.png',
        ];
        break;
      }
    }
  }
}