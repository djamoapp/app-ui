import 'package:get/get.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/checkbox_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/controls_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/radio_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/switcher_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/controls/tab_bar_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/core_components_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/views/accordions_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/views/account_scrolling_set_controller.dart';
import 'package:app_ui_example/src/controllers/core_components/views/views_controller.dart';
import 'package:app_ui_example/src/controllers/design_tokens/colors_controller.dart';
import 'package:app_ui_example/src/controllers/design_tokens/design_tokens_controller.dart';
import 'package:app_ui_example/src/controllers/design_tokens/icons_controller.dart';
import 'package:app_ui_example/src/controllers/design_tokens/spacing_controller.dart';
import 'package:app_ui_example/src/controllers/design_tokens/typography_controller.dart';
import 'package:app_ui_example/src/controllers/home_controller.dart';
import 'package:app_ui_example/src/views/core_components/controls/buttons_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/checkbox_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/controls_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/radio_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/search_bar_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/switcher_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/tab_bar_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/text_fields_view.dart';
import 'package:app_ui_example/src/views/core_components/controls/transaction_type_switcher_view.dart';
import 'package:app_ui_example/src/views/core_components/core_components_view.dart';
import 'package:app_ui_example/src/views/core_components/other_tokens/other_tokens_view.dart';
import 'package:app_ui_example/src/views/core_components/page_header/page_header_view.dart';
import 'package:app_ui_example/src/views/core_components/views/accordions_view.dart';
import 'package:app_ui_example/src/views/core_components/views/account_scrolling_set_view.dart';
import 'package:app_ui_example/src/views/core_components/views/analytics_view.dart';
import 'package:app_ui_example/src/views/core_components/views/keyboard_view.dart';
import 'package:app_ui_example/src/views/core_components/views/loader_view.dart';
import 'package:app_ui_example/src/views/core_components/views/pop_ups_view.dart';
import 'package:app_ui_example/src/views/core_components/views/popover_view.dart';
import 'package:app_ui_example/src/views/core_components/views/section_label_view.dart';
import 'package:app_ui_example/src/views/core_components/views/stepper_view.dart';
import 'package:app_ui_example/src/views/core_components/views/system_messages_view.dart';
import 'package:app_ui_example/src/views/core_components/views/tooltip_view.dart';
import 'package:app_ui_example/src/views/core_components/views/transaction_logo_view.dart';
import 'package:app_ui_example/src/views/core_components/views/transaction_preview_view.dart';
import 'package:app_ui_example/src/views/core_components/views/transaction_tags_view.dart';
import 'package:app_ui_example/src/views/core_components/views/transfer_ways_view.dart';
import 'package:app_ui_example/src/views/core_components/views/vc_balance_limit_alert_view.dart';
import 'package:app_ui_example/src/views/core_components/views/views_view.dart';
import 'package:app_ui_example/src/views/design_tokens/colors_view.dart';
import 'package:app_ui_example/src/views/design_tokens/design_tokens_view.dart';
import 'package:app_ui_example/src/views/design_tokens/icons_view.dart';
import 'package:app_ui_example/src/views/design_tokens/spacing_view.dart';
import 'package:app_ui_example/src/views/design_tokens/typography_view.dart';
import 'package:app_ui_example/src/views/home_view.dart';

class Routes {
  Routes._();

  // Design Tokens

  static String home = "/home";

  static String designTokens = "/designTokens";

  static String colors = "$designTokens/colors";

  static String icons = "$designTokens/icons";

  static String spacing = "$designTokens/spacing";

  static String typography = "$designTokens/typography";

  // Core Components

  static String coreComponents = "/coreComponents";

  static String controls = "$coreComponents/controls";

  static String views = "$coreComponents/views";

  static String pageHeader = "$coreComponents/pageHeader";

  static String otherTokens = "$coreComponents/otherTokens";

  static String buttons = "$controls/buttons";

  static String tabBar = "$controls/tabBar";

  static String switcher = "$controls/switcher";

  static String radio = "$controls/radio";

  static String checkbox = "$controls/checkbox";

  static String searchBars = "$controls/searchBars";

  static String textFields = "$controls/textFields";

  static String systemMessages = "$views/systemMessages";

  static String popovers = "$views/popovers";

  static String loader = "$views/loader";

  static String transactionLogos = "$views/transactionLogos";

  static String transactionTags = "$views/transactionTags";

  static String accordions = "$views/accordions";

  static String limitAlert = "$views/limitAlert";

  static String analytics = "$views/analytics";

  static String popUps = "$views/popUps";

  static String toolTip = "$views/tooltip";

  static String transferWays = "$views/transferWays";

  static String stepper = "$views/stepper";

  static String sectionLabel = "$views/sectionLabel";

  static String transactionPreview = "$views/transactionPreview";

  static String accountScrollingSet = "$views/accountScrollingSet";

  static String keyboard = "$views/keyboard";

  static String transactionTypeSwitcher = "$controls/transactionTypeSwitcher";

  // Pages

  static List<GetPage> pages = [
    GetPage(
        name: home,
        page: () => const HomeView(),
        binding: BindingsBuilder(() {
          Get.lazyPut(() => HomeController());
          Get.lazyPut(() => DesignTokensController());
          Get.lazyPut(() => CoreComponentsController());
        })),

    // Design Tokens

    GetPage(
        name: designTokens,
        page: () => const DesignTokensView(),
        binding: BindingsBuilder.put(() => DesignTokensController())),

    GetPage(
        name: colors,
        page: () => const ColorsView(),
        binding: BindingsBuilder.put(() => ColorsController())),

    GetPage(
        name: icons,
        page: () => const IconsView(),
        binding: BindingsBuilder.put(() => IconsController())),

    GetPage(
        name: spacing,
        page: () => const SpacingView(),
        binding: BindingsBuilder.put(() => SpacingController())),

    GetPage(
        name: typography,
        page: () => const TypographyView(),
        binding: BindingsBuilder.put(() => TypographyController())),

    // Core Components

    GetPage(
        name: coreComponents,
        page: () => const CoreComponentsView(),
        binding: BindingsBuilder.put(() => CoreComponentsController())),

    GetPage(
        name: controls,
        page: () => const ControlsView(),
        binding: BindingsBuilder.put(() => ControlsController())),

    GetPage(
        name: views,
        page: () => const ViewsView(),
        binding: BindingsBuilder.put(() => ViewsController())),

    GetPage(name: buttons, page: () => const ButtonsView()),

    GetPage(
        name: tabBar,
        page: () => const TabBarView(),
        binding: BindingsBuilder.put(() => TabBarController())),

    GetPage(
        name: switcher,
        page: () => const SwitcherView(),
        binding: BindingsBuilder.put(() => SwitcherController())),

    GetPage(
        name: radio,
        page: () => const RadioView(),
        binding: BindingsBuilder.put(() => RadioController())),

    GetPage(
        name: checkbox,
        page: () => const CheckBoxView(),
        binding: BindingsBuilder.put(() => CheckBoxController())),

    GetPage(name: searchBars, page: () => const SearchBarView()),

    GetPage(name: textFields, page: () => const TextFieldsView()),

    GetPage(name: systemMessages, page: () => const SystemMessagesView()),

    GetPage(name: loader, page: () => const LoaderView()),

    GetPage(name: transactionLogos, page: () => const TransactionLogoView()),

    GetPage(name: transactionTags, page: () => const TransactionTagsView()),

    GetPage(
        name: accordions,
        page: () => const AccordionView(),
        binding: BindingsBuilder.put(() => AccordionsController())),

    GetPage(
      name: analytics,
      page: () => const AnalyticsView(),
    ),

    GetPage(name: limitAlert, page: () => const VCBalanceLimitAlertView()),

    GetPage(name: popUps, page: () => const PopUsView()),

    GetPage(name: pageHeader, page: () => const PageHeaderView()),

    GetPage(name: otherTokens, page: () => const OtherTokensView()),

    GetPage(name: popovers, page: () => const PopoverView()),

    GetPage(name: toolTip, page: () => const ToolTipView()),

    GetPage(name: transferWays, page: () => const TransferWaysView()),

    GetPage(name: stepper, page: () => const StepperView()),

    GetPage(name: sectionLabel, page: () => const SectionLabelView()),

    GetPage(
        name: transactionPreview, page: () => const TransactionPreviewView()),

    GetPage(
        name: accountScrollingSet,
        page: () => const AccountScrollingSetView(),
        binding: BindingsBuilder.put(() => AccountScrollingSetController())),

    GetPage(name: keyboard, page: () => const KeyBoardView()),

    GetPage(
        name: transactionTypeSwitcher,
        page: () => const TransactionTypeSwitcherView())
  ];
}
