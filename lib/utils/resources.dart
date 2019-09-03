const APP_NAME = 'بدع حديثة حول الكتاب المقدس';
const QUOTE =
    'كُلُّ الْكِتَابِ هُوَ مُوحًى بِهِ مِنَ اللهِ،\n وَنَافِعٌ لِلتَّعْلِيمِ وَالتَّوْبِيخِ، لِلتَّقْوِيمِ وَالتَّأْدِيبِ\n الَّذِي فِي الْبِرِّ';
const QUOTE_DECORATED = '" $QUOTE "';
const GUIDE = '2 تي 3: 16';
const GUIDE_DECORATED = '($GUIDE)';
const PROGRAM = 'البرنامج';
const MAIN_SONG = 'الشعار';
const SONGS = 'الالحان';
const FATHERS_SAY = 'اقوال اباء';
const FATHERS_SAY_HOLY = 'اقوال اباء عن الكتاب المقدس';
const SONGS2 = 'الترانيم';
const DAY_1 = 'اليوم الاول';
const DAY_2 = 'اليوم التاني';
const DAY_3 = 'اليوم الثالث';

const PRIVACY_POLICY = 'Privacy Policy';
const TIME_KEY = 'time';
const TITLE_KEY = 'title';
const BODY_KEY = 'body';
const DETAILS_KEY = 'details';

const NAME_KEY = 'time';
const QUOTE_KEY = 'title';
const PIC_KEY = 'details';

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

const SONGS_LIST = [
  'ذكصولوجية عيد النيروز',
  'لحن أيها الرب إله القوات',
  'لحـــــــــــــــــن بي نيشتي',
  'إبصالية آدام لعيد النيروز'
];

const SONGS2_LIST = [
  'كنيستنا دى قصة اجيال',
  'كنيستي القبطية',
  'كنيستي أرجو لكي',
  'مفيش أحلى منها ساعة الصلاة',
  'ليتك تباركني',
  'ما احلاكِ يا كنيستنا',
  'الشهداء حبوك',
  'يا كنيستنا يا مجيدة',
  'كم قسى الظلم عليكي',
  'أعروس الفادي',
];

const FATHERS_SAY_DETAILS = [
  {
    NAME_KEY: 'القديس العظيم الانبا انطونيوس',
    QUOTE_KEY: 'اتعب نفسك في قراءة الاسفار المقدسة فهي تخلصك من النجاسة',
    PIC_KEY: 'assets/images/pic1.jpg',
  },
  {
    NAME_KEY: 'القديس غريغوريوس الكبير',
    QUOTE_KEY:
        'ان كتاب الله نهر فيه يمكن ان يعوم الفيل كما انه يمكن ان يعبره الحمل الصغير',
    PIC_KEY: 'assets/images/cross.jpg',
  },
  {
    NAME_KEY: 'القديس يوحنا ذهبي الفم',
    QUOTE_KEY:
        'من يعرف الكتاب المقدس حق المعرفة لن يتعثر في شيء بل سيحتمل كل شيء بصبر و نبل',
    PIC_KEY: 'assets/images/pic3.jpg',
  },
  {
    NAME_KEY: 'القديس اوغسطينوس',
    QUOTE_KEY:
        'الكتاب المقدس هو سيف الانتصار على فيض الخلاعة التي اوشكت ان تقضي على الاداب المسيحية',
    PIC_KEY: 'assets/images/pic4.jpg',
  },
  {
    NAME_KEY: 'القديس جيروم',
    QUOTE_KEY: 'اذا احببت كتابك المقدس فلن تكمل بعد شهوة الجسد',
    PIC_KEY: 'assets/images/pic5.jpg',
  },
  {
    NAME_KEY: 'القديس مار اسحق السرياني',
    QUOTE_KEY: 'قراءة الكتاب المقدس تنير العقل و تعلم النفس الحديث مع الله',
    PIC_KEY: 'assets/images/pic6.jpg',
  },
  {
    NAME_KEY: 'القديس امبروسيوس',
    QUOTE_KEY: 'نخاطب الرب اذ نصلي و نصغي اليه اذ نقرأ الكتاب المقدس',
    PIC_KEY: 'assets/images/pic7.jpg',
  },
];

const MAIN_SONG_DETAILS =
    '(على وزن شوفت في الكنيسة)\nالقرار: كتابي مكتوب لحياتي مطلوب\nاتعلم واعلم واغير قلوب\n\n1- ابارك وأشارك كل كل الناس\nافرح قلب يسوع ادعوا للخلاص\n\nكتابي مكتوب لحياتي مطلوب\nاتعلم واعلم واغير قلوب\n\n2- أثمر ثمرات ادعوا للصلوات\nهدفي الملكوت حتى لو اموت\n\nكتابي مكتوب لحياتي مطلوب\nاتعلم واعلم واغير قلوب\n\n3- كل طاعتي ليه ده سالمي فيه\nيارب خليني ما الجأ الا ليه\n';
