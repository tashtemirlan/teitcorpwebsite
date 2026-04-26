import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:seo/seo.dart';

// ─────────────────────────── LOCALISATION ────────────────────────────────────
class _L {
  static const Map<String, Map<String, String>> _d = {
    'en': {
      'contact_btn': 'Contact Us',
      // Hero
      'hero_tag': 'Flutter Development Studio',
      'hero_title': 'Full-Spectrum Flutter\nDevelopment',
      'hero_sub': 'TEIT CORP builds production-grade Flutter applications for Android, iOS, Web, macOS, and Windows — delivering pixel-perfect native experiences from a single, maintainable codebase.',
      'cta_contact': 'Start Your Project',
      // About
      'about_title': 'Flutter at TEIT CORP',
      'about_body': 'TEIT CORP is a Flutter-first development studio. Flutter is not one of many technologies we use — it is our core platform. We architect, build, test, and maintain cross-platform applications that run on every major target Flutter supports, from Android and iOS to the web, macOS, and Windows desktops.\n\nOur team leverages the complete Flutter ecosystem: advanced state management, reactive programming patterns, clean architecture, comprehensive widget testing, and native platform integrations. The result is software that is fast, beautiful, and built to last.',
      // Platforms
      'platforms_title': 'Every Platform Flutter Supports',
      'platforms_sub': 'We develop and deploy production Flutter apps to all major target platforms.',
      // Why Flutter
      'why_title': 'Why Flutter?',
      'why_sub': "Google's open-source UI toolkit that compiles to native code for every platform from a single Dart codebase — with no compromises on performance or design.",
      'adv1_t': 'Single Codebase',
      'adv1_d': 'One codebase targets Android, iOS, Web, macOS, Windows, and Linux — dramatically reducing development and maintenance cost.',
      'adv2_t': 'Native Performance',
      'adv2_d': 'Flutter compiles directly to native ARM and x64 machine code, delivering smooth 60 / 120fps rendering on all platforms.',
      'adv3_t': 'Pixel-Perfect UI',
      'adv3_d': 'Flutter owns every pixel. Custom designs render identically on every device without OS-specific quirks or HTML rendering limitations.',
      'adv4_t': 'Rich Ecosystem',
      'adv4_d': 'A vast and growing ecosystem of first-party Google packages and high-quality community packages for virtually any feature requirement.',
      // State Management
      'sm_title': 'State Management Expertise',
      'sm_sub': 'We do not favour one solution over another. We choose the right state management approach for each project based on its scale, team, and requirements.',
      'sm1_name': 'Riverpod',
      'sm1_use': 'Preferred for',
      'sm1_desc': 'Scalable apps requiring compile-safe providers, clean architecture, and code generation via riverpod_generator.',
      'sm2_name': 'BLoC / Cubit',
      'sm2_use': 'Preferred for',
      'sm2_desc': 'Enterprise apps with complex event-driven business logic, large teams, and strict separation of concerns.',
      'sm3_name': 'Provider',
      'sm3_use': 'Preferred for',
      'sm3_desc': 'Lightweight widget-scoped state management and dependency injection for small to mid-size applications.',
      'sm4_name': 'MobX',
      'sm4_use': 'Preferred for',
      'sm4_desc': 'Reactive, observable-based state with automatic UI tracking — ideal for data-heavy UIs that update frequently.',
      // Approach
      'approach_title': 'Technical Approach',
      'approach_sub': 'How we architect and deliver Flutter projects',
      'apr1_t': 'Clean Architecture',
      'apr1_d': 'Feature-first folder structure with strict separation of data, domain, and presentation layers. Fully testable and scalable from MVP to enterprise.',
      'apr2_t': 'Testing Strategy',
      'apr2_d': 'Unit tests for business logic, widget tests for UI components, and integration tests for critical user flows. We ship quality, not just code.',
      'apr3_t': 'Design Implementation',
      'apr3_d': 'Pixel-perfect translation of Figma / design specs to Flutter widgets. Adaptive and responsive layouts across all screen sizes and orientations.',
      'apr4_t': 'CI / CD & DevOps',
      'apr4_d': 'Automated build pipelines, code signing, and deployment to Google Play, App Store, and Firebase App Distribution for every release.',
      // Apps
      'apps_title': 'Featured Flutter Projects',
      'apps_sub': 'Production applications built with Flutter, live on the Google Play Store',
      'app1_name': 'Zherdesh',
      'app1_cat': 'Classifieds · Real Estate · Jobs · Community',
      'app1_desc': 'A full-featured classifieds and marketplace platform designed for the Kyrgyz-speaking diaspora community. Zherdesh enables users to post and browse listings across jobs, real estate, transportation, services, and general advertising — all from a single, fluent Flutter interface.\n\nThe application integrates real-time database sync, deep-link navigation, and a search system covering all listing categories. Built entirely with Flutter for a native-quality experience on Android.',
      'app1_tech': 'Flutter · Firebase · Riverpod · REST API',
      'app2_name': 'Terra Tort',
      'app2_cat': 'Mobile · Interactive · Consumer',
      'app2_desc': 'A polished mobile application showcasing the depth of Flutter\'s UI capabilities — smooth page transitions, layered animations, and an intuitive, gesture-driven interface that feels entirely native on Android.\n\nTerra Tort demonstrates TEIT CORP\'s ability to craft consumer-facing Flutter experiences that prioritise usability, visual quality, and production stability.',
      'app2_tech': 'Flutter · Material Design 3 · Custom Animations · GoRouter',
      'view_store': 'View on Google Play',
      // Tech stack
      'tech_title': 'Flutter Package Ecosystem',
      'tech_sub': 'Packages and tools we use across production projects',
      // CTA
      'cta_title': 'Ready to Build with Flutter?',
      'cta_sub': "Tell us about your project. We'll architect the right Flutter solution for your platform and scale.",
      'cta_btn': 'Contact TEIT CORP',
    },
    'ru': {
      'contact_btn': 'Связаться',
      'hero_tag': 'Flutter-студия разработки',
      'hero_title': 'Полный спектр\nFlutter-разработки',
      'hero_sub': 'TEIT CORP создаёт production-приложения на Flutter для Android, iOS, Web, macOS и Windows — pixel-perfect нативный опыт из единой поддерживаемой кодовой базы.',
      'cta_contact': 'Начать проект',
      'about_title': 'Flutter в TEIT CORP',
      'about_body': 'TEIT CORP — это Flutter-first студия разработки. Flutter — не одна из многих технологий, которые мы используем: это наша основная платформа. Мы проектируем, разрабатываем, тестируем и поддерживаем кроссплатформенные приложения для всех основных целевых платформ Flutter: от Android и iOS до веба, macOS и Windows.\n\nНаша команда использует весь экосистем Flutter: продвинутое управление состоянием, реактивные паттерны, чистую архитектуру, комплексное widget-тестирование и нативные платформенные интеграции. Результат — быстрый, красивый и долговечный продукт.',
      'platforms_title': 'Все платформы Flutter',
      'platforms_sub': 'Мы разрабатываем и публикуем production Flutter-приложения на всех основных платформах.',
      'why_title': 'Почему Flutter?',
      'why_sub': 'UI-инструментарий с открытым кодом от Google, компилирующийся в нативный код для всех платформ из единой Dart-кодовой базы.',
      'adv1_t': 'Единая кодовая база', 'adv1_d': 'Один код для Android, iOS, Web, macOS, Windows и Linux — значительно снижает расходы на разработку и поддержку.',
      'adv2_t': 'Нативная производительность', 'adv2_d': 'Flutter компилируется в нативный ARM и x64 машинный код, обеспечивая плавные 60/120fps на всех платформах.',
      'adv3_t': 'Pixel-perfect UI', 'adv3_d': 'Flutter управляет каждым пикселем. Кастомные дизайны идентично отображаются на каждом устройстве.',
      'adv4_t': 'Богатая экосистема', 'adv4_d': 'Обширная экосистема пакетов Google и сообщества для практически любых требований к функциональности.',
      'sm_title': 'Экспертиза в управлении состоянием',
      'sm_sub': 'Мы не отдаём предпочтение одному решению. Мы выбираем подходящий подход к управлению состоянием для каждого проекта.',
      'sm1_name': 'Riverpod', 'sm1_use': 'Предпочтительно для', 'sm1_desc': 'Масштабируемых приложений с типобезопасными провайдерами, чистой архитектурой и генерацией кода через riverpod_generator.',
      'sm2_name': 'BLoC / Cubit', 'sm2_use': 'Предпочтительно для', 'sm2_desc': 'Enterprise-приложений со сложной событийно-управляемой бизнес-логикой и строгим разделением ответственности.',
      'sm3_name': 'Provider', 'sm3_use': 'Предпочтительно для', 'sm3_desc': 'Лёгкого управления состоянием и DI для небольших и средних приложений.',
      'sm4_name': 'MobX', 'sm4_use': 'Предпочтительно для', 'sm4_desc': 'Реактивного, основанного на наблюдателях состояния с автоматическим обновлением UI для data-heavy интерфейсов.',
      'approach_title': 'Технический подход',
      'approach_sub': 'Как мы проектируем и реализуем Flutter-проекты',
      'apr1_t': 'Чистая архитектура', 'apr1_d': 'Feature-first структура с разделением слоёв данных, домена и представления. Полностью тестируемая и масштабируемая от MVP до enterprise.',
      'apr2_t': 'Стратегия тестирования', 'apr2_d': 'Unit-тесты для бизнес-логики, widget-тесты для UI, интеграционные тесты для ключевых пользовательских сценариев.',
      'apr3_t': 'Реализация дизайна', 'apr3_d': 'Pixel-perfect перенос Figma/дизайн-спецификаций во Flutter-виджеты. Адаптивные макеты для всех размеров экранов.',
      'apr4_t': 'CI / CD и DevOps', 'apr4_d': 'Автоматизированные сборочные конвейеры, подписание кода и публикация в Google Play, App Store и Firebase App Distribution.',
      'apps_title': 'Ключевые Flutter-проекты',
      'apps_sub': 'Production-приложения на Flutter, опубликованные в Google Play Store',
      'app1_name': 'Жердеш', 'app1_cat': 'Объявления · Недвижимость · Работа · Сообщество',
      'app1_desc': 'Полнофункциональная платформа объявлений для кыргызскоязычного диаспорного сообщества. Жердеш позволяет публиковать и просматривать объявления о работе, недвижимости, транспорте, услугах и рекламе.\n\nПриложение интегрирует синхронизацию БД в реальном времени, deep-link навигацию и систему поиска. Полностью на Flutter.',
      'app1_tech': 'Flutter · Firebase · Riverpod · REST API',
      'app2_name': 'Terra Tort', 'app2_cat': 'Мобайл · Интерактивное · Потребительское',
      'app2_desc': 'Полированное мобильное приложение, демонстрирующее глубину UI-возможностей Flutter — плавные переходы, многослойные анимации и интуитивный жестовый интерфейс, ощущаемый нативным на Android.\n\nTerra Tort демонстрирует способность TEIT CORP создавать потребительские Flutter-продукты с упором на удобство использования и визуальное качество.',
      'app2_tech': 'Flutter · Material Design 3 · Кастомные анимации · GoRouter',
      'view_store': 'Открыть в Google Play',
      'tech_title': 'Экосистема Flutter-пакетов',
      'tech_sub': 'Пакеты и инструменты, используемые в production-проектах',
      'cta_title': 'Готовы строить на Flutter?',
      'cta_sub': 'Расскажите нам о своём проекте. Мы спроектируем правильное Flutter-решение для вашей платформы и масштаба.',
      'cta_btn': 'Связаться с TEIT CORP',
    },
    'ky': {
      'contact_btn': 'Байланышуу',
      'hero_tag': 'Flutter иштеп чыгуу студиясы',
      'hero_title': 'Толук спектрдүү\nFlutter иштеп чыгуу',
      'hero_sub': 'TEIT CORP Android, iOS, Web, macOS жана Windows үчүн Flutter тиркемелерин куруп чыгат — бир кодбазадан нативдик сапаттагы тажрыйба.',
      'cta_contact': 'Долбоорду баштоо',
      'about_title': 'TEIT CORPтогу Flutter',
      'about_body': "TEIT CORP — Flutter-first иштеп чыгуу студиясы. Flutter биз колдонгон технологиялардын бири эмес — бул биздин негизги платформабыз. Биз Flutter колдогон бардык негизги платформалар үчүн кросс-платформалык тиркемелерди долбоорлойбуз, куруп чыгабыз, тестирлейбиз жана колдойбуз: Android менен iOSтан баштап, веб, macOS жана Windows десктопторуна чейин.\n\nБиздин команда Flutter экосистемин толугу менен колдонот: өнүккөн state management, реактивдик программалоо паттерндери, таза архитектура, комплекстүү widget тестирлөө жана нативдик платформа интеграциялары.",
      'platforms_title': 'Flutter колдогон бардык платформалар',
      'platforms_sub': 'Биз бардык негизги максаттуу платформаларга production Flutter тиркемелерин иштеп чыгып, жайгаштырабыз.',
      'why_title': 'Эмнеге Flutter?',
      'why_sub': "Googleдун ачык булактуу UI инструментарийи — бир Dart кодбазасынан бардык платформалар үчүн нативдик кодго компиляцияланат.",
      'adv1_t': 'Бир кодбаза', 'adv1_d': 'Android, iOS, Web, macOS, Windows жана Linux үчүн бир код — иштеп чыгуу жана колдоо чыгымдарын бир топ азайтат.',
      'adv2_t': 'Нативдик өндүрүмдүүлүк', 'adv2_d': 'Flutter нативдик ARM жана x64 машина кодуна компиляцияланат, бардык платформаларда жылмакай 60/120fps рендерингди камсыздайт.',
      'adv3_t': 'Pixel-perfect UI', 'adv3_d': "Flutter ар бир пикселге ээ. Кастомдук дизайндар ар бир түзмөктө бирдей рендерленет.",
      'adv4_t': 'Бай экосистема', 'adv4_d': "Googleдун биринчи тарап пакеттери жана дээрлик бардык функционалдык талаптар үчүн сапаттуу коомдук пакеттер.",
      'sm_title': 'State Management боюнча эксперттик',
      'sm_sub': 'Биз бир чечимди артык көрбөйбүз. Ар бир долбоор үчүн анын масштабына жана талаптарына жараша туура state management ыкмасын тандайбыз.',
      'sm1_name': 'Riverpod', 'sm1_use': 'Артыкча колдонулат', 'sm1_desc': 'Типтик коопсуз провайдерлер, таза архитектура жана riverpod_generator аркылуу код генерациясын талап кылган масштабдуу тиркемелер үчүн.',
      'sm2_name': 'BLoC / Cubit', 'sm2_use': 'Артыкча колдонулат', 'sm2_desc': 'Татаал окуяга негизделген бизнес логикасы бар enterprise тиркемелери жана ири командалар үчүн.',
      'sm3_name': 'Provider', 'sm3_use': 'Артыкча колдонулат', 'sm3_desc': 'Кичинекей жана орто тиркемелер үчүн жеңил widget-чөлкөмдүк state management жана DI.',
      'sm4_name': 'MobX', 'sm4_use': 'Артыкча колдонулат', 'sm4_desc': 'Маалыматтарга бай жана тез-тез жаңыртылуучу интерфейстер үчүн автоматтык UI трекинг менен реактивдик observable негизделген state.',
      'approach_title': 'Техникалык ыкма',
      'approach_sub': 'Flutter долбоорлорун кантип долбоорлойбуз жана жүзөгө ашырабыз',
      'apr1_t': 'Таза архитектура', 'apr1_d': 'Маалыматтар, домен жана презентация катмарларын так бөлүү менен Feature-first түзүм. МВПдан enterprise чейин толугу менен тестирленет жана масштабдалат.',
      'apr2_t': 'Тестирлөө стратегиясы', 'apr2_d': 'Бизнес логикасы үчүн unit тесттер, UI үчүн widget тесттер жана негизги колдонуучу агымдары үчүн интеграциялык тесттер.',
      'apr3_t': 'Дизайнды жүзөгө ашыруу', 'apr3_d': 'Figma/дизайн-спецификацияларды Flutter виджеттерине pixel-perfect которуу. Бардык экран өлчөмдөрү үчүн адаптивдик макеттер.',
      'apr4_t': 'CI / CD жана DevOps', 'apr4_d': 'Автоматташтырылган сборка, код кол коюу жана Google Play, App Store жана Firebase App Distributionго жарыялоо.',
      'apps_title': 'Негизги Flutter долбоорлору',
      'apps_sub': 'Google Play Storeдо жарыяланган Flutter менен куруп чыгылган production тиркемелери',
      'app1_name': 'Жердеш', 'app1_cat': 'Жарнамалар · Кыймылсыз мүлк · Жумуш · Коомчулук',
      'app1_desc': "Кыргызтилдүү диаспора коомчулугу үчүн толук функционалдуу жарнама платформасы. Жердеш колдонуучуларга жумуш, кыймылсыз мүлк, транспорт, кызматтар жана жарнамалар боюнча объявлениелерди жарыялоого жана карап чыгууга мүмкүндүк берет.\n\nТиркеме реалдуу убакыт режиминде маалымат базасын синхрондоштурат, deep-link навигацияны жана издөө системасын камтыйт. Толугу менен Flutter менен курулган.",
      'app1_tech': 'Flutter · Firebase · Riverpod · REST API',
      'app2_name': 'Terra Tort', 'app2_cat': 'Мобилдик · Интерактивдик · Керектөөчүлүк',
      'app2_desc': "Flutter'дун UI мүмкүнчүлүктөрүнүн тереңдигин көрсөткөн жылмакай барак өтүүлөр, көп катмарлуу анимациялар жана Android'да толугу менен нативдик сезилген интуитивдик жест-аркылуу интерфейс менен жылмакай мобилдик тиркеме.\n\nTerra Tort TEIT CORP'тун колдонуучуга ыңгайлуулукту жана визуалдык сапатты артыкча коюп, керектөөчүлүк Flutter тажрыйбаларын жаратуу жөндөмдүүлүгүн демонстрациялайт.",
      'app2_tech': 'Flutter · Material Design 3 · Кастомдук анимациялар · GoRouter',
      'view_store': 'Google Play Store',
      'tech_title': 'Flutter пакет экосистемасы',
      'tech_sub': 'Production долбоорлорунда колдонулган пакеттер жана инструменттер',
      'cta_title': 'Flutter менен куруга даярсызбы?',
      'cta_sub': 'Долбооруңуз жөнүндө айтып бериңиз. Биз сиздин платформаңыз жана масштабыңыз үчүн туура Flutter чечимин долбоорлойбуз.',
      'cta_btn': 'TEIT CORP менен байланышуу',
    },
  };
  static String s(String key, String locale) =>
      _d[locale]?[key] ?? _d['en']?[key] ?? key;
}

// ─────────────────────────── TECH CATEGORIES ─────────────────────────────────
const _techCategories = [
  ('Routing',          ['go_router', 'auto_route', 'Navigator 2.0']),
  ('State Management', ['flutter_riverpod', 'flutter_bloc', 'Provider', 'MobX']),
  ('Networking',       ['dio', 'http', 'graphql_flutter', 'graphql', 'gql']),
  ('Authentication',   ['google_sign_in', 'sign_in_with_apple', 'local_auth', 'amplify_auth_cognito', 'amazon_cognito_identity_dart_2']),
  ('Firebase',         ['firebase_core', 'firebase_analytics', 'firebase_crashlytics', 'firebase_messaging']),
  ('Storage / DB',     ['hive', 'hive_flutter', 'sqflite', 'path_provider', 'path']),
  ('Maps & Location',  ['google_maps_flutter', 'geolocator']),
  ('UI Components',    ['fl_chart', 'rive', 'flutter_staggered_grid_view', 'insta_image_viewer', 'video_player', 'video_thumbnail', 'flutter_svg', 'dropdown_button2', 'dotted_border', 'mask_text_input_formatter', 'fluttertoast', 'google_fonts']),
  ('Media',            ['image_picker', 'camera', 'flutter_image_compress', 'gal', 'mobile_scanner']),
  ('Platform',         ['permission_handler', 'webview_flutter', 'device_preview', 'device_info_plus', 'package_info_plus', 'connectivity_plus', 'workmanager', 'flutter_native_splash', 'native_device_orientation']),
  ('Notifications',    ['flutter_local_notifications', 'firebase_messaging']),
  ('Localization',     ['flutter_localizations', 'easy_localization', 'intl']),
  ('SEO & Web',        ['seo', 'meta_seo']),
  ('Security',         ['crypto', 'local_auth']),
  ('Code Generation',  ['build_runner', 'json_serializable', 'json_annotation', 'freezed', 'graphql_codegen']),
  ('AWS',              ['amplify_flutter', 'amplify_auth_cognito', 'amazon_cognito_identity_dart_2']),
];

// ─────────────────────────── WIDGET ──────────────────────────────────────────
class FlutterLandingPage extends StatefulWidget {
  const FlutterLandingPage({super.key});
  @override
  FlutterLandingPageState createState() => FlutterLandingPageState();
}

class FlutterLandingPageState extends State<FlutterLandingPage> {
  String _locale = 'en';
  static const _blue  = Color.fromRGBO(21, 126, 254, 1);
  static const _bg    = Color.fromRGBO(250, 250, 250, 1);

  String t(String key) => _L.s(key, _locale);

  Future<void> _launch(String url) async =>
      launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);

  // ── CONTACT DIALOG ───────────────────────────────────────────────────────
  void _showContact(BuildContext ctx, double dw) {
    showDialog(
      context: ctx,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        title: Text('Contact TEIT CORP',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'TextFont', fontSize: 22 * dw, fontWeight: FontWeight.w700)),
        content: SizedBox(width: dw * 460, height: dw * 220,
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _cTile(dw, FontAwesomeIcons.solidPaperPlane, 'Telegram', '@teit_flutter',
                () => _launch('https://t.me/teit_flutter')),
            _cTile(dw, FontAwesomeIcons.solidEnvelope, 'Email', 'teitcorporation@gmail.com',
                () => _launch('mailto:teitcorporation@gmail.com')),
          ]),
        ),
      ),
    );
  }

  Widget _cTile(double dw, IconData icon, String title, String sub, VoidCallback onTap) =>
      MouseRegion(cursor: SystemMouseCursors.click,
        child: GestureDetector(onTap: onTap,
          child: Container(
            width: dw * 440, height: dw * 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: const Color.fromRGBO(248, 248, 248, 1)),
            child: Row(children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: dw * 18),
                child: CircleAvatar(backgroundColor: const Color.fromRGBO(230, 237, 247, 1), radius: dw * 22,
                  child: FaIcon(icon, color: _blue, size: dw * 19))),
              Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(title, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, fontWeight: FontWeight.w700)),
                Text(sub,   style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 12, color: const Color.fromRGBO(80, 80, 80, 1))),
              ]),
            ]),
          ),
        ),
      );

  // ── LANGUAGE SWITCHER ────────────────────────────────────────────────────
  Widget _langSwitcher(double dw) => Row(
    children: [
      for (final lang in ['en', 'ru', 'ky'])
        MouseRegion(cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => setState(() => _locale = lang),
            child: Container(
              margin: EdgeInsets.only(right: dw * 8),
              padding: EdgeInsets.symmetric(horizontal: dw * 14, vertical: dw * 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(dw * 8),
                color: _locale == lang ? _blue : Colors.transparent,
                border: Border.all(color: _locale == lang ? _blue : const Color.fromRGBO(200, 200, 200, 1)),
              ),
              child: Text(lang.toUpperCase(),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w600,
                  color: _locale == lang ? Colors.white : const Color.fromRGBO(100, 100, 100, 1))),
            ),
          ),
        ),
    ],
  );

  // ── NAVBAR ───────────────────────────────────────────────────────────────
  Widget _navbar(double dw) => Align(
    alignment: Alignment.center,
    child: SizedBox(width: 1128 * dw, height: 55 * dw,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // Logo — tapping goes back to home
        MouseRegion(cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context.go('/home'),
            child: Row(children: [
              Text('{', style: TextStyle(fontFamily: 'JustAnother', fontSize: 42 * dw, fontWeight: FontWeight.bold, color: _blue)),
              FaIcon(FontAwesomeIcons.check, size: 32 * dw, color: _blue),
              Text('}', style: TextStyle(fontFamily: 'JustAnother', fontSize: 42 * dw, fontWeight: FontWeight.bold, color: _blue)),
              SizedBox(width: 5 * dw),
              Container(width: 2 * dw, height: 38 * dw,
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5))),
              SizedBox(width: 10 * dw),
              Text('TEIT CORP', style: TextStyle(fontFamily: 'CompanyFont', fontSize: 32 * dw, fontWeight: FontWeight.bold)),
            ]),
          ),
        ),
        Row(children: [
          _langSwitcher(dw),
          SizedBox(width: dw * 16),
          SizedBox(height: 55 * dw,
            child: Padding(padding: EdgeInsets.symmetric(vertical: 5 * dw),
              child: ElevatedButton(
                onPressed: () => _showContact(context, dw),
                style: ElevatedButton.styleFrom(backgroundColor: _blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8 * dw))),
                child: Text(t('contact_btn'), style: TextStyle(fontFamily: 'TextFont', fontSize: 20 * dw, fontWeight: FontWeight.w500, color: Colors.white)),
              ),
            ),
          ),
        ]),
      ]),
    ),
  );

  // ── HERO ─────────────────────────────────────────────────────────────────
  Widget _hero(double dw) => Container(
    width: double.infinity,
    color: const Color.fromRGBO(235, 245, 255, 1),
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: 80 * dw),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // Left: text
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: dw * 16, vertical: dw * 8),
              decoration: BoxDecoration(
                color: _blue.withOpacity(0.1), borderRadius: BorderRadius.circular(dw * 20),
                border: Border.all(color: _blue.withOpacity(0.3))),
              child: Text(t('hero_tag'),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w600, color: _blue)),
            ),
            SizedBox(height: dw * 22),
            Seo.text(text: t('hero_title'), style: TextTagStyle.h1,
              child: Text(t('hero_title'),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 58, fontWeight: FontWeight.w900,
                  color: Colors.black, height: 1.1))),
            SizedBox(height: dw * 22),
            Text(t('hero_sub'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, color: const Color.fromRGBO(65, 65, 65, 1), height: 1.65)),
            SizedBox(height: dw * 36),
            ElevatedButton(
              onPressed: () => _showContact(context, dw),
              style: ElevatedButton.styleFrom(
                backgroundColor: _blue,
                padding: EdgeInsets.symmetric(horizontal: dw * 32, vertical: dw * 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 10))),
              child: Text(t('cta_contact'),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, fontWeight: FontWeight.w600, color: Colors.white)),
            ),
          ])),
          SizedBox(width: dw * 60),
          // Right: Flutter logo + platforms
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Flutter logo
            Container(
              width: dw * 160, height: dw * 160,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(color: _blue.withOpacity(0.15), blurRadius: 32, spreadRadius: 4)],
              ),
              child: Center(child: FlutterLogo(size: dw * 96)),
            ),
            SizedBox(height: dw * 32),
            // Platform grid
            Wrap(
              spacing: dw * 12, runSpacing: dw * 12,
              alignment: WrapAlignment.center,
              children: [
                _platformChip(dw, FontAwesomeIcons.android, 'Android'),
                _platformChip(dw, FontAwesomeIcons.apple, 'iOS'),
                _platformChip(dw, FontAwesomeIcons.globe, 'Web'),
                _platformChip(dw, FontAwesomeIcons.windows, 'Windows'),
                _platformChip(dw, FontAwesomeIcons.laptop, 'macOS'),
              ],
            ),
          ]),
        ]),
      ),
    ),
  );

  Widget _platformChip(double dw, IconData icon, String label) => Container(
    padding: EdgeInsets.symmetric(horizontal: dw * 14, vertical: dw * 9),
    decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(dw * 24),
      border: Border.all(color: const Color.fromRGBO(210, 225, 255, 1), width: 1.5),
      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8)],
    ),
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      FaIcon(icon, size: dw * 14, color: _blue),
      SizedBox(width: dw * 8),
      Text(label, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w600, color: const Color.fromRGBO(40, 40, 40, 1))),
    ]),
  );

  // ── ABOUT ────────────────────────────────────────────────────────────────
  Widget _about(double dw) => Container(
    width: double.infinity, color: Colors.white,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          // Left: text
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(width: dw * 52, height: dw * 5,
              decoration: BoxDecoration(color: _blue, borderRadius: BorderRadius.circular(3))),
            SizedBox(height: dw * 18),
            Seo.text(text: t('about_title'), style: TextTagStyle.h2,
              child: Text(t('about_title'),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black))),
            SizedBox(height: dw * 22),
            Text(t('about_body'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, color: const Color.fromRGBO(65, 65, 65, 1), height: 1.8)),
          ])),
          SizedBox(width: dw * 72),
          // Right: pillars
          SizedBox(width: dw * 340,
            child: Column(children: [
              _pillar(dw, FontAwesomeIcons.mobileScreenButton, 'Flutter-First Studio'),
              SizedBox(height: dw * 14),
              _pillar(dw, FontAwesomeIcons.layerGroup,         'All State Management Patterns'),
              SizedBox(height: dw * 14),
              _pillar(dw, FontAwesomeIcons.vial,               'Widget & Integration Testing'),
              SizedBox(height: dw * 14),
              _pillar(dw, FontAwesomeIcons.googlePlay,         'Published on Google Play Store'),
              SizedBox(height: dw * 14),
              _pillar(dw, FontAwesomeIcons.globe,              'Web, Desktop & Mobile'),
            ]),
          ),
        ]),
      ),
    ),
  );

  Widget _pillar(double dw, IconData icon, String label) => Container(
    padding: EdgeInsets.symmetric(horizontal: dw * 18, vertical: dw * 14),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(235, 245, 255, 1),
      borderRadius: BorderRadius.circular(dw * 12),
    ),
    child: Row(children: [
      FaIcon(icon, size: dw * 18, color: _blue),
      SizedBox(width: dw * 14),
      Expanded(child: Text(label,
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, fontWeight: FontWeight.w600, color: const Color.fromRGBO(30, 30, 30, 1)))),
    ]),
  );

  // ── WHY FLUTTER ──────────────────────────────────────────────────────────
  Widget _whyFlutter(double dw) => Container(
    width: double.infinity, color: _bg,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Seo.text(text: t('why_title'), style: TextTagStyle.h2,
            child: Text(t('why_title'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black))),
          SizedBox(height: dw * 12),
          Text(t('why_sub'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, color: const Color.fromRGBO(90, 90, 90, 1), height: 1.6)),
          SizedBox(height: dw * 44),
          Row(children: [
            _advCard(dw, FontAwesomeIcons.code,         t('adv1_t'), t('adv1_d')),
            SizedBox(width: dw * 20),
            _advCard(dw, FontAwesomeIcons.bolt,         t('adv2_t'), t('adv2_d')),
            SizedBox(width: dw * 20),
            _advCard(dw, FontAwesomeIcons.paintbrush,   t('adv3_t'), t('adv3_d')),
            SizedBox(width: dw * 20),
            _advCard(dw, FontAwesomeIcons.cubesStacked, t('adv4_t'), t('adv4_d')),
          ]),
        ]),
      ),
    ),
  );

  Widget _advCard(double dw, IconData icon, String title, String desc) => Expanded(
    child: Container(
      padding: EdgeInsets.all(dw * 26),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(dw * 16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 16, offset: const Offset(0, 4))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: dw * 48, height: dw * 48,
          decoration: BoxDecoration(color: _blue.withOpacity(0.1), borderRadius: BorderRadius.circular(dw * 12)),
          child: Center(child: FaIcon(icon, size: dw * 22, color: _blue)),
        ),
        SizedBox(height: dw * 16),
        Text(title, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, fontWeight: FontWeight.w700, color: Colors.black)),
        SizedBox(height: dw * 10),
        Text(desc, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(90, 90, 90, 1), height: 1.65)),
      ]),
    ),
  );

  // ── STATE MANAGEMENT EXPERTISE ───────────────────────────────────────────
  Widget _stateMgmt(double dw) => Container(
    width: double.infinity, color: Colors.white,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Seo.text(text: t('sm_title'), style: TextTagStyle.h2,
                child: Text(t('sm_title'),
                  style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black))),
              SizedBox(height: dw * 12),
              Text(t('sm_sub'),
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, color: const Color.fromRGBO(90, 90, 90, 1), height: 1.6)),
            ])),
          ]),
          SizedBox(height: dw * 44),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _smCard(dw, '1', t('sm1_name'), t('sm1_use'), t('sm1_desc'), const Color.fromRGBO(0, 120, 230, 1)),
            SizedBox(width: dw * 16),
            _smCard(dw, '2', t('sm2_name'), t('sm2_use'), t('sm2_desc'), const Color.fromRGBO(0, 180, 120, 1)),
            SizedBox(width: dw * 16),
            _smCard(dw, '3', t('sm3_name'), t('sm3_use'), t('sm3_desc'), const Color.fromRGBO(230, 80, 40, 1)),
            SizedBox(width: dw * 16),
            _smCard(dw, '4', t('sm4_name'), t('sm4_use'), t('sm4_desc'), const Color.fromRGBO(210, 140, 0, 1)),
          ]),
        ]),
      ),
    ),
  );

  Widget _smCard(double dw, String num, String name, String useLabel, String desc, Color accent) => Expanded(
    child: Container(
      padding: EdgeInsets.all(dw * 22),
      decoration: BoxDecoration(
        color: _bg, borderRadius: BorderRadius.circular(dw * 16),
        border: Border.all(color: accent.withOpacity(0.2), width: 1.5),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: dw * 36, height: dw * 36,
          decoration: BoxDecoration(color: accent.withOpacity(0.12), borderRadius: BorderRadius.circular(dw * 8)),
          child: Center(child: Text(num, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, fontWeight: FontWeight.w900, color: accent))),
        ),
        SizedBox(height: dw * 14),
        Text(name, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, fontWeight: FontWeight.w800, color: Colors.black)),
        SizedBox(height: dw * 6),
        Text(useLabel, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600, color: accent, letterSpacing: 0.5)),
        SizedBox(height: dw * 8),
        Text(desc, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(80, 80, 80, 1), height: 1.6)),
      ]),
    ),
  );

  // ── APPROACH ─────────────────────────────────────────────────────────────
  Widget _approach(double dw) => Container(
    width: double.infinity, color: _bg,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Seo.text(text: t('approach_title'), style: TextTagStyle.h2,
            child: Text(t('approach_title'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black))),
          SizedBox(height: dw * 12),
          Text(t('approach_sub'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, color: const Color.fromRGBO(90, 90, 90, 1))),
          SizedBox(height: dw * 44),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _aprCard(dw, '01', FontAwesomeIcons.sitemap,            t('apr1_t'), t('apr1_d')),
            SizedBox(width: dw * 20),
            _aprCard(dw, '02', FontAwesomeIcons.vial,               t('apr2_t'), t('apr2_d')),
            SizedBox(width: dw * 20),
            _aprCard(dw, '03', FontAwesomeIcons.penRuler,           t('apr3_t'), t('apr3_d')),
            SizedBox(width: dw * 20),
            _aprCard(dw, '04', FontAwesomeIcons.gears,              t('apr4_t'), t('apr4_d')),
          ]),
        ]),
      ),
    ),
  );

  Widget _aprCard(double dw, String num, IconData icon, String title, String desc) => Expanded(
    child: Container(
      padding: EdgeInsets.all(dw * 26),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(dw * 16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 14, offset: const Offset(0, 4))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Text(num, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 12, fontWeight: FontWeight.w700, color: _blue, letterSpacing: 1)),
          const Spacer(),
          FaIcon(icon, size: dw * 16, color: _blue.withOpacity(0.4)),
        ]),
        SizedBox(height: dw * 14),
        Text(title, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, fontWeight: FontWeight.w700, color: Colors.black)),
        SizedBox(height: dw * 10),
        Text(desc, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(80, 80, 80, 1), height: 1.65)),
      ]),
    ),
  );

  // ── APPS ─────────────────────────────────────────────────────────────────
  Widget _apps(double dw) => Container(
    width: double.infinity, color: Colors.white,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Seo.text(text: t('apps_title'), style: TextTagStyle.h2,
            child: Text(t('apps_title'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black))),
          SizedBox(height: dw * 10),
          Text(t('apps_sub'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, color: const Color.fromRGBO(90, 90, 90, 1))),
          SizedBox(height: dw * 44),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _appCard(dw,
              name: t('app1_name'), category: t('app1_cat'), desc: t('app1_desc'),
              tech: t('app1_tech'), accentColor: _blue,
              imagePath: 'assets/images/company1.png',
              storeUrl: 'https://play.google.com/store/apps/details?id=com.zherdeshapp.zherdeshmobileapplication&hl=en'),
            SizedBox(width: dw * 28),
            _appCard(dw,
              name: t('app2_name'), category: t('app2_cat'), desc: t('app2_desc'),
              tech: t('app2_tech'), accentColor: const Color.fromRGBO(0, 160, 110, 1),
              imagePath: 'assets/images/company2.png',
              storeUrl: 'https://play.google.com/store/apps/details?id=com.terratort.terratort&hl=en'),
          ]),
        ]),
      ),
    ),
  );

  Widget _appCard(double dw, {
    required String name, required String category, required String desc,
    required String tech, required Color accentColor,
    required String imagePath, required String storeUrl,
  }) => Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(dw * 20),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 24, offset: const Offset(0, 6))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Screenshot / image header
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(dw * 20), topRight: Radius.circular(dw * 20)),
          child: SizedBox(
            height: dw * 200, width: double.infinity,
            child: Image.asset(imagePath, fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: accentColor.withOpacity(0.12),
                child: Center(child: FaIcon(FontAwesomeIcons.mobileScreenButton, size: dw * 48, color: accentColor)),
              )),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(dw * 28),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Category tag
            Container(
              padding: EdgeInsets.symmetric(horizontal: dw * 12, vertical: dw * 5),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.08), borderRadius: BorderRadius.circular(dw * 20),
                border: Border.all(color: accentColor.withOpacity(0.25))),
              child: Text(category,
                style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 12, fontWeight: FontWeight.w600, color: accentColor)),
            ),
            SizedBox(height: dw * 14),
            Text(name, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 24, fontWeight: FontWeight.w800, color: Colors.black)),
            SizedBox(height: dw * 12),
            Text(desc, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, color: const Color.fromRGBO(65, 65, 65, 1), height: 1.75)),
            SizedBox(height: dw * 16),
            // Tech used
            Wrap(spacing: dw * 8, runSpacing: dw * 8,
              children: tech.split(' · ').map((tag) => Container(
                padding: EdgeInsets.symmetric(horizontal: dw * 10, vertical: dw * 4),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 240, 245, 1),
                  borderRadius: BorderRadius.circular(dw * 6)),
                child: Text(tag, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600, color: const Color.fromRGBO(60, 60, 70, 1))),
              )).toList(),
            ),
            SizedBox(height: dw * 22),
            // Play Store button
            MouseRegion(cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => _launch(storeUrl),
                child: Container(
                  width: double.infinity, height: dw * 48,
                  decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(dw * 10)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    FaIcon(FontAwesomeIcons.googlePlay, size: dw * 15, color: Colors.white),
                    SizedBox(width: dw * 10),
                    Text(t('view_store'),
                      style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, fontWeight: FontWeight.w600, color: Colors.white)),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ]),
    ),
  );

  // ── TECH STACK ───────────────────────────────────────────────────────────
  Widget _techStack(double dw) => Container(
    width: double.infinity, color: _bg,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(t('tech_title'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w800, color: Colors.black)),
          SizedBox(height: dw * 10),
          Text(t('tech_sub'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 17, color: const Color.fromRGBO(90, 90, 90, 1))),
          SizedBox(height: dw * 44),
          // Category rows
          for (final cat in _techCategories) ...[
            _techCategoryRow(dw, cat.$1, cat.$2),
            SizedBox(height: dw * 20),
          ],
        ]),
      ),
    ),
  );

  Widget _techCategoryRow(double dw, String category, List<String> tags) => Container(
    padding: EdgeInsets.all(dw * 20),
    decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(dw * 14),
      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 8)],
    ),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // Category label
      SizedBox(
        width: dw * 180,
        child: Padding(
          padding: EdgeInsets.only(top: dw * 4),
          child: Text(category,
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w700,
              color: _blue, letterSpacing: 0.3)),
        ),
      ),
      // Tags
      Expanded(child: Wrap(
        spacing: dw * 10, runSpacing: dw * 10,
        children: tags.map((tag) => Container(
          padding: EdgeInsets.symmetric(horizontal: dw * 14, vertical: dw * 7),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(240, 245, 255, 1),
            borderRadius: BorderRadius.circular(dw * 8),
            border: Border.all(color: const Color.fromRGBO(210, 220, 240, 1))),
          child: Text(tag,
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w600, color: const Color.fromRGBO(35, 35, 55, 1))),
        )).toList(),
      )),
    ]),
  );

  // ── CTA ──────────────────────────────────────────────────────────────────
  Widget _cta(double dw) => Container(
    width: double.infinity, color: _blue,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 1128 * dw,
        padding: EdgeInsets.symmetric(vertical: dw * 80),
        child: Column(children: [
          FlutterLogo(size: dw * 52, style: FlutterLogoStyle.markOnly),
          SizedBox(height: dw * 24),
          Text(t('cta_title'), textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 42, fontWeight: FontWeight.w800, color: Colors.white)),
          SizedBox(height: dw * 14),
          Text(t('cta_sub'), textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 18, color: Colors.white.withOpacity(0.82))),
          SizedBox(height: dw * 38),
          ElevatedButton(
            onPressed: () => _showContact(context, dw),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: dw * 44, vertical: dw * 18),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 12))),
            child: Text(t('cta_btn'),
              style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 18, fontWeight: FontWeight.w700, color: _blue)),
          ),
        ]),
      ),
    ),
  );

  // ─────────────────────────── MOBILE ──────────────────────────────────────
  Widget _navbarMobile(double dw) => Padding(
    padding: EdgeInsets.symmetric(horizontal: dw * 20),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      MouseRegion(cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => context.go('/home'),
          child: Row(children: [
            Text('{', style: TextStyle(fontFamily: 'JustAnother', fontSize: 28 * dw, fontWeight: FontWeight.bold, color: _blue)),
            FaIcon(FontAwesomeIcons.check, size: 20 * dw, color: _blue),
            Text('}', style: TextStyle(fontFamily: 'JustAnother', fontSize: 28 * dw, fontWeight: FontWeight.bold, color: _blue)),
            SizedBox(width: dw * 6),
            Text('TEIT CORP', style: TextStyle(fontFamily: 'CompanyFont', fontSize: 18 * dw, fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
      Row(children: [
        for (final lang in ['en', 'ru', 'ky'])
          MouseRegion(cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => setState(() => _locale = lang),
              child: Container(
                margin: EdgeInsets.only(right: dw * 6),
                padding: EdgeInsets.symmetric(horizontal: dw * 10, vertical: dw * 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(dw * 6),
                  color: _locale == lang ? _blue : Colors.transparent,
                  border: Border.all(color: _locale == lang ? _blue : const Color.fromRGBO(200, 200, 200, 1))),
                child: Text(lang.toUpperCase(),
                  style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600,
                    color: _locale == lang ? Colors.white : const Color.fromRGBO(100, 100, 100, 1))),
              ),
            ),
          ),
      ]),
    ]),
  );

  Widget _heroMobile(double dw) => Container(
    width: double.infinity, color: const Color.fromRGBO(235, 245, 255, 1),
    padding: EdgeInsets.symmetric(horizontal: dw * 20, vertical: dw * 40),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: dw * 14, vertical: dw * 7),
        decoration: BoxDecoration(color: _blue.withOpacity(0.1), borderRadius: BorderRadius.circular(dw * 20),
          border: Border.all(color: _blue.withOpacity(0.3))),
        child: Text(t('hero_tag'),
          style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600, color: _blue)),
      ),
      SizedBox(height: dw * 18),
      Center(child: FlutterLogo(size: dw * 72)),
      SizedBox(height: dw * 18),
      Text(t('hero_title'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 38, fontWeight: FontWeight.w900, color: Colors.black, height: 1.15)),
      SizedBox(height: dw * 14),
      Text(t('hero_sub'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(65, 65, 65, 1), height: 1.6)),
      SizedBox(height: dw * 24),
      // Platform chips
      Wrap(spacing: dw * 8, runSpacing: dw * 8, children: [
        for (final p in [
          (FontAwesomeIcons.android, 'Android'), (FontAwesomeIcons.apple, 'iOS'),
          (FontAwesomeIcons.globe, 'Web'), (FontAwesomeIcons.windows, 'Windows'),
          (FontAwesomeIcons.laptop, 'macOS'),
        ]) _platformChip(dw * 0.85, p.$1, p.$2),
      ]),
      SizedBox(height: dw * 28),
      SizedBox(
        width: double.infinity, height: dw * 50,
        child: ElevatedButton(
          onPressed: () => _showContact(context, dw),
          style: ElevatedButton.styleFrom(backgroundColor: _blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 10))),
          child: Text(t('cta_contact'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, fontWeight: FontWeight.w600, color: Colors.white)),
        ),
      ),
    ]),
  );

  Widget _smMobile(double dw) => Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: dw * 20, vertical: dw * 48),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(t('sm_title'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 28, fontWeight: FontWeight.w800, color: Colors.black)),
      SizedBox(height: dw * 10),
      Text(t('sm_sub'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, color: const Color.fromRGBO(90, 90, 90, 1), height: 1.55)),
      SizedBox(height: dw * 28),
      for (final sm in [
        ('1', 'sm1_name', 'sm1_use', 'sm1_desc', const Color.fromRGBO(0, 120, 230, 1)),
        ('2', 'sm2_name', 'sm2_use', 'sm2_desc', const Color.fromRGBO(0, 180, 120, 1)),
        ('3', 'sm3_name', 'sm3_use', 'sm3_desc', const Color.fromRGBO(230, 80, 40, 1)),
        ('4', 'sm4_name', 'sm4_use', 'sm4_desc', const Color.fromRGBO(210, 140, 0, 1)),
      ]) ...[
        Container(
          padding: EdgeInsets.all(dw * 18),
          margin: EdgeInsets.only(bottom: dw * 12),
          decoration: BoxDecoration(
            color: _bg, borderRadius: BorderRadius.circular(dw * 14),
            border: Border.all(color: sm.$5.withOpacity(0.25), width: 1.5)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Container(
                width: dw * 32, height: dw * 32,
                decoration: BoxDecoration(color: sm.$5.withOpacity(0.12), borderRadius: BorderRadius.circular(dw * 8)),
                child: Center(child: Text(sm.$1, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w900, color: sm.$5)))),
              SizedBox(width: dw * 12),
              Text(t(sm.$2), style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 16, fontWeight: FontWeight.w800, color: Colors.black)),
            ]),
            SizedBox(height: dw * 8),
            Text(t(sm.$3), style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600, color: sm.$5)),
            SizedBox(height: dw * 6),
            Text(t(sm.$4), style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(70, 70, 70, 1), height: 1.55)),
          ]),
        ),
      ],
    ]),
  );

  Widget _appsMobile(double dw) => Container(
    color: _bg, padding: EdgeInsets.symmetric(horizontal: dw * 20, vertical: dw * 48),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(t('apps_title'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 28, fontWeight: FontWeight.w800, color: Colors.black)),
      SizedBox(height: dw * 8),
      Text(t('apps_sub'),
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(90, 90, 90, 1))),
      SizedBox(height: dw * 28),
      _appCardMobile(dw,
        name: t('app1_name'), category: t('app1_cat'), desc: t('app1_desc'),
        tech: t('app1_tech'), accentColor: _blue, imagePath: 'assets/images/company1.png',
        storeUrl: 'https://play.google.com/store/apps/details?id=com.zherdeshapp.zherdeshmobileapplication&hl=en'),
      SizedBox(height: dw * 20),
      _appCardMobile(dw,
        name: t('app2_name'), category: t('app2_cat'), desc: t('app2_desc'),
        tech: t('app2_tech'), accentColor: const Color.fromRGBO(0, 160, 110, 1), imagePath: 'assets/images/company2.png',
        storeUrl: 'https://play.google.com/store/apps/details?id=com.terratort.terratort&hl=en'),
    ]),
  );

  Widget _appCardMobile(double dw, {required String name, required String category, required String desc,
      required String tech, required Color accentColor, required String imagePath, required String storeUrl}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(dw * 16),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.07), blurRadius: 14, offset: const Offset(0, 4))],
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(dw * 16), topRight: Radius.circular(dw * 16)),
          child: SizedBox(height: dw * 160, width: double.infinity,
            child: Image.asset(imagePath, fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: accentColor.withOpacity(0.12),
                child: Center(child: FaIcon(FontAwesomeIcons.mobileScreenButton, size: dw * 40, color: accentColor))))),
        ),
        Padding(padding: EdgeInsets.all(dw * 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(padding: EdgeInsets.symmetric(horizontal: dw * 10, vertical: dw * 4),
              decoration: BoxDecoration(color: accentColor.withOpacity(0.08), borderRadius: BorderRadius.circular(dw * 16), border: Border.all(color: accentColor.withOpacity(0.2))),
              child: Text(category, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 11, fontWeight: FontWeight.w600, color: accentColor))),
            SizedBox(height: dw * 10),
            Text(name, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 20, fontWeight: FontWeight.w800, color: Colors.black)),
            SizedBox(height: dw * 10),
            Text(desc, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, color: const Color.fromRGBO(65, 65, 65, 1), height: 1.7)),
            SizedBox(height: dw * 14),
            Wrap(spacing: dw * 7, runSpacing: dw * 7,
              children: tech.split(' · ').map((tag) => Container(
                padding: EdgeInsets.symmetric(horizontal: dw * 8, vertical: dw * 4),
                decoration: BoxDecoration(color: const Color.fromRGBO(240, 240, 245, 1), borderRadius: BorderRadius.circular(dw * 6)),
                child: Text(tag, style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 10, fontWeight: FontWeight.w600, color: const Color.fromRGBO(60, 60, 70, 1))),
              )).toList(),
            ),
            SizedBox(height: dw * 18),
            MouseRegion(cursor: SystemMouseCursors.click,
              child: GestureDetector(onTap: () => _launch(storeUrl),
                child: Container(width: double.infinity, height: dw * 46,
                  decoration: BoxDecoration(color: accentColor, borderRadius: BorderRadius.circular(dw * 10)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    FaIcon(FontAwesomeIcons.googlePlay, size: dw * 13, color: Colors.white),
                    SizedBox(width: dw * 8),
                    Text(t('view_store'), style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 13, fontWeight: FontWeight.w600, color: Colors.white)),
                  ]),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );

  Widget _ctaMobile(double dw) => Container(
    color: _blue, padding: EdgeInsets.symmetric(horizontal: dw * 20, vertical: dw * 56),
    child: Column(children: [
      FlutterLogo(size: dw * 44, style: FlutterLogoStyle.markOnly),
      SizedBox(height: dw * 20),
      Text(t('cta_title'), textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 26, fontWeight: FontWeight.w800, color: Colors.white)),
      SizedBox(height: dw * 12),
      Text(t('cta_sub'), textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 14, color: Colors.white.withOpacity(0.82))),
      SizedBox(height: dw * 28),
      SizedBox(width: double.infinity, height: dw * 52,
        child: ElevatedButton(
          onPressed: () => _showContact(context, dw),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(dw * 12))),
          child: Text(t('cta_btn'),
            style: TextStyle(fontFamily: 'TextFont', fontSize: dw * 15, fontWeight: FontWeight.w700, color: _blue)),
        ),
      ),
    ]),
  );

  // ── BUILD ────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    final width    = MediaQuery.of(context).size.width;
    final isMobile = width <= 425;
    final dw       = isMobile ? width / 425 : width / 1440;

    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: Scaffold(
        backgroundColor: _bg,
        body: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: isMobile
                ? [
                    SizedBox(height: dw * 20),
                    _navbarMobile(dw),
                    _heroMobile(dw),
                    _smMobile(dw),
                    _appsMobile(dw),
                    _ctaMobile(dw),
                  ]
                : [
                    SizedBox(height: dw * 20),
                    _navbar(dw),
                    SizedBox(height: dw * 10),
                    _hero(dw),
                    _about(dw),
                    _whyFlutter(dw),
                    _stateMgmt(dw),
                    _approach(dw),
                    _apps(dw),
                    _techStack(dw),
                    _cta(dw),
                  ],
          ),
        ),
      ),
    );
  }
}
