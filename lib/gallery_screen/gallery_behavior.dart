import 'dart:io';

Map<String, String> mainCategoryTitleMap = {
  'All' : '0',
  'Wedding' : '1',
  'Birthday' : '2',
  'Party' : '3',
  'Babies & Kids' : '4',
  'Announcements': '5',
};

List<String> mainCategoryTitleList = [
  'All',
  'Wedding',
  'Birthday',
  'Party',
  'Babies & Kids',
  'Announcements',
];

Map<String, List<String>> subCateGoryTitleMapOfLists = {
  'Wedding' : [
    'Wedding Invitations',
    'Bridal Shower',
    'Bachelor Party',
    'Save The Date',
    'Engagement Party',
    'Rehearsal Dinner',
    'RSVP Cards',
  ],
  'Birthday' :  [
    '1st Birthday',
    'Baby Birthday',
    'Kids Birthday',
    'Men\'s Birthday',
    'Women\'s Birthday',
  ],
  'Party' :  [
    'Anniversary',
    'BBQ Party',
    'Brunch',
    'Cocktail Party',
    'Dinner Party',
    'Family Reunion',
    'Graduation Party',
    'Housewarming',
    'Retirement Party',
    'RSVP Cards',
    'Sleepover Party',
    'Sports & Games',
    'Summer & Pool',
    'Professional Events',
  ],
  'Babies & Kids' :  [
    '1st Birthday',
    'Birth Announcements',
    'Baby Birthday',
    'Baby Shower',
    'Baby Sprinkle',
    'Baptism & Christening',
    'First Communion',
    'Gender Reveal',
    'Kids Birthday',
    'Sip & See',
  ],
  'Announcements':  [
    'Birth',
    'Engagement',
    'Graduation',
    'Memorial',
    'Moving',
    'Pregnancy',
    'Save the date',
    'Wedding',
  ]
};

Map<String, Map<String, String>> subCategoryTitleMap = {
  'Wedding' : {
    'Wedding Invitations' : '01',
    'Bridal Shower' : '02',
    'Bachelor Party' : '03',
    'Save The Date' : '04',
    'Engagement Party' : '05',
    'Rehearsal Dinner' : '06',
    'RSVP Cards' : '07',

  },
  'Birthday' :  {
    '1st Birthday' : '01',
    'Baby Birthday' : '02',
    'Kids Birthday' : '03',
    'Men\'s Birthday' : '04',
    'Women\'s Birthday' : '05',
  },
  'Party' :  {
    'Anniversary' : '01',
    'BBQ Party' : '02',
    'Brunch' : '03',
    'Cocktail Party' : '04',
    'Dinner Party' : '05',
    'Family Reunion' : '06',
    'Graduation Party' : '07',
    'Housewarming' : '08',
    'Retirement Party' : '09',
    'RSVP Cards' : '10',
    'Sleepover Party' : '11',
    'Sports & Games' : '12',
    'Summer & Pool' : '13',
    'Professional Events' : '14',
  },
  'Babies & Kids' :  {
    '1st Birthday' : '01',
    'Birth Announcements' : '02',
    'Baby Birthday' : '03',
    'Baby Shower' : '04',
    'Baby Sprinkle' : '05',
    'Baptism & Christening' : '06',
    'First Communion' : '07',
    'Gender Reveal' : '08',
    'Kids Birthday' : '09',
    'Sip & See' : '10',
  },
  'Announcements':  {
    'Birth' : '01',
    'Engagement' : '02',
    'Graduation' : '03',
    'Memorial' : '04',
    'Moving' : '05',
    'Pregnancy' : '06',
    'Save the date' : '07',
    'Wedding' : '08',
  }
};

class GalleryBehavior{

  DateTime currentDateTimeRoughObject = DateTime.now();

  String currentMainCategory = 'All', currentSubCategory = 'All';
  int index = 0;

  List<FileSystemEntity> filteredImageList = [], filteredVideoList = [], filteredGifsList = [], originalImageList = [], originalVideoList = [], originalGifsList = [];

}