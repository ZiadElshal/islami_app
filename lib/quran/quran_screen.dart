import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/quran/item_sura_name.dart';
import 'package:islami_app/quran/item_sura_number.dart';
import 'package:islami_app/quran/item_sura_number_arabic.dart';
import 'package:provider/provider.dart';

class QuranScreen extends StatelessWidget {
  ///sura name and versesNumber
  List<String> suraNamesArabic = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> versesNumberArabic = [
    "٧",
    "٢٨٦",
    "٢٠٠",
    "١٧٦",
    "١٢٠",
    "١٦٥",
    "٢٠٦",
    "٧٥",
    "١٢٩",
    "١٠٩",
    "١٢٣",
    "١١١",
    "٤٣",
    "٥٢",
    "٩٩",
    "١٢٨",
    "١١١",
    "١١٠",
    "٩٨",
    "١٣٥",
    "١١٢",
    "٧٨",
    "١١٨",
    "٦٤",
    "٧٧",
    "٢٢٧",
    "٩٣",
    "٨٨",
    "٦٩",
    "٦٠",
    "٣٤",
    "٣٠",
    "٧٣",
    "٥٤",
    "٤٥",
    "٨٣",
    "١٨٢",
    "٨٨",
    "٧٥",
    "٨٥",
    "٥٤",
    "٥٣",
    "٨٩",
    "٥٩",
    "٣٧",
    "٣٥",
    "٣٨",
    "٢٩",
    "١٨",
    "٤٥",
    "٦٠",
    "٤٩",
    "٦٢",
    "٥٥",
    "٧٨",
    "٩٦",
    "٢٩",
    "٢٢",
    "٢٤",
    "١٣",
    "١٤",
    "١١",
    "١١",
    "١٨",
    "١٢",
    "١٢",
    "٣٠",
    "٥٢",
    "٥٢",
    "٤٤",
    "٢٨",
    "٢٨",
    "٢٠",
    "٥٦",
    "٤٠",
    "٣١",
    "٥٠",
    "٤٠",
    "٤٦",
    "٤٢",
    "٢٩",
    "١٩",
    "٣٦",
    "٢٥",
    "٢٢",
    "١٧",
    "١٩",
    "٢٦",
    "٣٠",
    "٢٠",
    "١٥",
    "٢١",
    "١١",
    "٨",
    "٥",
    "١٩",
    "٥",
    "٨",
    "٨",
    "١١",
    "١١",
    "٨",
    "٣",
    "٩",
    "٥",
    "٤",
    "٦",
    "٣",
    "٦",
    "٣",
    "٥",
    "٤",
    "٥",
    "٦"
  ];
  List<String> suraNamesEnglish = [
    "Al-Fatihah",
    "Al-Baqarah",
    "Aal-Imraan",
    "An-Nisaa",
    "Al-Maaidah",
    "Al-An'aam",
    "Al-A'raaf",
    "Al-Anfal",
    "At-Tawbah",
    "Yunus",
    "Hud",
    "Yusuf",
    "Ar-Ra'd",
    "Ibrahim",
    "Al-Hijr",
    "An-Nahl",
    "Al-Israa",
    "Al-Kahf",
    "Maryam",
    "Ta-Ha",
    "Al-Anbiyaa",
    "Al-Hajj",
    "Al-Muminoon",
    "An-Noor",
    "Al-Furqaan",
    "Ash-Shu'araa",
    "An-Naml",
    "Al-Qasas",
    "Al-Ankaboot",
    "Ar-Room",
    "Luqman",
    "As-Sajda",
    "Al-Ahzaab",
    "Saba",
    "Fatir",
    "Yaseen",
    "As-Saffat",
    "Saad",
    "Az-Zumar",
    "Ghafir",
    "Fussilat",
    "Ash-Shura",
    "Az-Zukhruf",
    "Ad-Dukhan",
    "Al-Jathiya",
    "Al-Ahqaf",
    "Muhammad",
    "Al-Fath",
    "Al-Hujurat",
    "Qaaf",
    "Adh-Dhariyat",
    "At-Tur",
    "An-Najm",
    "Al-Qamar",
    "Ar-Rahman",
    "Al-Waqiaah",
    "Al-Hadid",
    "Al-Mujadilah",
    "Al-Hashr",
    "Al-Mumtahanah",
    "As-Saff",
    "Al-Jumu'ah",
    "Al-Munafiqun",
    "At-Taghabun",
    "At-Talaq",
    "At-Tahrim",
    "Al-Mulk",
    "Al-Qalam",
    "Al-Haqqah",
    "Al-Ma'arij",
    "Nooh",
    "Al-Jinn",
    "Al-Muzzammil",
    "Al-Muddaththir",
    "Al-Qiyamah",
    "Al-Insaan",
    "Al-Mursalat",
    "An-Naba",
    "An-Nazi'aat",
    "Abasa",
    "At-Takwir",
    "Al-Infitar",
    "Al-Mutaffifin",
    "Al-Inshiqaq",
    "Al-Burooj",
    "At-Taariq",
    "Al-A'laa",
    "Al-Ghashiyah",
    "Al-Fajr",
    "Al-Balad",
    "Ash-Shams",
    "Al-Lail",
    "Ad-Duhaa",
    "Al-Sharh",
    "At-Tin",
    "Al-Alaq",
    "Al-Qadr",
    "Al-Bayyinah",
    "Az-Zalzalah",
    "Al-Aadiyaat",
    "Al-Qaari'ah",
    "At-Takaathur",
    "Al-Asr",
    "Al-Humazah",
    "Al-Fil",
    "Quraysh",
    "Al-Maa'un",
    "Al-Kawthar",
    "Al-Kaafiroon",
    "An-Nasr",
    "Al-Masad",
    "Al-Ikhlas",
    "Al-Falaq",
    "An-Naas"
  ];
  List<int> versesNumberEnglish = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Expanded(child: Image.asset("assets/images/quran_logo.png")),
        Divider(
          color: provider.appTheme == ThemeMode.light
              ? AppColors.primaryLightColor
              : AppColors.yellowColor,
          thickness: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            provider.appLanguage == "ar"
                ? Text(
                    AppLocalizations.of(context)!.sura_name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                : Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.sura_name,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
            Container(
              width: 2.5,
              //MediaQuery.of(context).size.width * 0.01,
              height: 40,
              decoration: BoxDecoration(
                color: provider.appTheme == ThemeMode.light
                    ? AppColors.primaryLightColor
                    : AppColors.yellowColor,
              ),
            ),
            provider.appLanguage == "ar"
                ? Text(
                    AppLocalizations.of(context)!.number_of_verses,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                : Text(
                    AppLocalizations.of(context)!.number_of_verses,
                    style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        Divider(
          color: provider.appTheme == ThemeMode.light
              ? AppColors.primaryLightColor
              : AppColors.yellowColor,
          thickness: 4,
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: provider.appTheme == ThemeMode.light
                          ? AppColors.primaryLightColor
                          : AppColors.yellowColor,
                      thickness: 2,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          child: provider.appLanguage == "ar"
                              ? ItemSuraName(
                                  name: suraNamesArabic[index], index: index)
                              : ItemSuraName(
                                  name: suraNamesEnglish[index], index: index),
                        ),
                        Container(
                          width: 2.5,
                          height: 40,
                          decoration: BoxDecoration(
                            color: provider.appTheme == ThemeMode.light
                                ? AppColors.primaryLightColor
                                : AppColors.yellowColor,
                          ),
                        ),
                        Expanded(
                          child: provider.appLanguage == "ar"
                              ? ItemSuraNumberArabic(
                                  number: versesNumberArabic[index])
                              : ItemSuraNumber(
                                  number: versesNumberEnglish[index]),
                        ),
                      ],
                    );
                  },
                  itemCount: suraNamesArabic.length,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
