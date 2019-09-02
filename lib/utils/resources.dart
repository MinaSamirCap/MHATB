const QUOTE = 'كُلُّ الْكِتَابِ هُوَ مُوحًى بِهِ مِنَ اللهِ،\n وَنَافِعٌ لِلتَّعْلِيمِ وَالتَّوْبِيخِ، لِلتَّقْوِيمِ وَالتَّأْدِيبِ\n الَّذِي فِي الْبِرِّ';
const QUOTE_DECORATED = '" $QUOTE "';
const GUIDE = '2 تي 3: 16';
const GUIDE_DECORATED = '($GUIDE)';
const PROGRAM = 'البرنامج';
const MAIN_SONG = 'الشعار';
const DAY_1 = 'اليوم الاول';
const DAY_2 = 'اليوم التاني';
const DAY_3 = 'اليوم الثالث';

const TIME_KEY = 'time';
const TITLE_KEY = 'title';
const DETAILS_KEY = 'details';

const DAY_1_MAP = [
  {
    TIME_KEY: '09:00 - 10:00',
    TITLE_KEY: 'استلام الغرف',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '10:00 - 10:15',
    TITLE_KEY: 'صلاة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '10:15 - 10:30',
    TITLE_KEY: 'عرض البرنامج',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '10:30 - 11:00',
    TITLE_KEY: 'ترانيم وألحان',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '11:00 - 12:00',
    TITLE_KEY: 'العنف فى الكتاب المقدس',
    DETAILS_KEY: 'ابونا يوسف سمير',
  },
  {
    TIME_KEY: '12:00 - 12:15',
    TITLE_KEY: 'شاي',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '12:15 - 12:45',
    TITLE_KEY: 'اقوال ومعانى',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '12:45 - 01:00',
    TITLE_KEY: 'ترانيم وألحان',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '01:00 - 02:00',
    TITLE_KEY: 'قواعد عامه فى الرد على اعتراضات الكتاب المقدس',
    DETAILS_KEY: 'ابونا متى بديع',
  },
  {
    TIME_KEY: '02:00 - 05:00',
    TITLE_KEY: 'غذاء وراحة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '05:00 - 06:00',
    TITLE_KEY: 'صلاة الغروب والنوم',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '06:00 - 06:15',
    TITLE_KEY: 'ترانيم وألحان',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '06:15 - 06:45',
    TITLE_KEY: 'اقوال ومعانى',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '06:45 - 08:00',
    TITLE_KEY: 'هل الكتاب المقدس من اساطير الاولين',
    DETAILS_KEY: 'استاذ عصام نعيم',
  },
  {
    TIME_KEY: '08:00 - 08:30',
    TITLE_KEY: 'عشاء',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '08:30 - 10:30',
    TITLE_KEY: 'موضوع للمناقشة',
    DETAILS_KEY: '',
  },
];

const DAY_2_MAP = [
  {
    TIME_KEY: '08:00 - 08:30',
    TITLE_KEY: 'صلاة باكر',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '08:30 - 09:00',
    TITLE_KEY: 'فطار',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '09:00 - 09:15',
    TITLE_KEY: 'ترانيم وألحان',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '09:15 - 10:15',
    TITLE_KEY: 'هل العلم والتطور ضد الكتاب المقدس',
    DETAILS_KEY: 'استاذ عصام نسيم',
  },
  {
    TIME_KEY: '10:15 - 10:30',
    TITLE_KEY: 'شاي',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '10:30 - 11:00',
    TITLE_KEY: 'اقوال ومعانى',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '11:00 - 12:00',
    TITLE_KEY: 'التفاسير الابائية للكتاب المقدس',
    DETAILS_KEY: 'الحبر الجليل الانبا زوسيما',
  },
  {
    TIME_KEY: '12:00 - 12:30',
    TITLE_KEY: 'شاي وراحة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '12:30 - 12:45',
    TITLE_KEY: 'ترانيم',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '12:45 - 02:00',
    TITLE_KEY: 'ورشة عمل',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '02:00 - 05:00',
    TITLE_KEY: 'غذاء وراحة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '05:00 - 06:00',
    TITLE_KEY: 'صلاة عشية',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '06:00 - 07:00',
    TITLE_KEY: 'رياضة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '07:00 - 07:15',
    TITLE_KEY: 'ترانيم والحان',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '07:15 - 08:15',
    TITLE_KEY: 'قداسة العهد القديم',
    DETAILS_KEY: 'ابونا رفائيل ثروت',
  },
  {
    TIME_KEY: '08:15 - 08:45',
    TITLE_KEY: 'عشاء',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '08:15 - 10:15',
    TITLE_KEY: 'تسبحة نصف اليل',
    DETAILS_KEY: '',
  },
];

const DAY_3_MAP = [
  {
    TIME_KEY: '07:00 - 10:30',
    TITLE_KEY: 'القداس',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '10:30 - 11:00',
    TITLE_KEY: 'الفطار',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '11:00 - 11:30',
    TITLE_KEY: 'كلمة سيدنا',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '11:30 - 01:00',
    TITLE_KEY: 'موضوع للمناقشة',
    DETAILS_KEY: '',
  },
  {
    TIME_KEY: '01:00 - 02:00',
    TITLE_KEY: 'توصيات وختام',
    DETAILS_KEY: '',
  },
];

