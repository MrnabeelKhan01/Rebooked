
import 'package:flutter/material.dart';
import 'package:rebooked_app/presentation/view/auth/phone_number/phone_number_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../configurations/frontend_configs.dart';
import '../../elements/app_button.dart';
import 'layout/on_boarding_widget.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final List<SliderPage> _pageList = [
    const SliderPage(
      svg: 'assets/images/on_boarding/on_one.svg',
      body: "Simply set up your Rebooked account and share your travel itinerary."
          " You can forward your confirmation email to us, or have it automatically sync through from select corporate partners."
          " Once we have your details, we'll immediately begin monitoring your flights.",
      title: 'Get Started with Ease',
    ),
    const SliderPage(
      svg: 'assets/images/on_boarding/on_two.svg',
      body: "If we detect or anticipate any flight cancellations or delays, we swiftly spring into action. Our system automatically secures an alternative flight for you, ensuring you grab a seat before they're gone. You'll have a 10-minute courtesy window to confirm your new booking.",
      title: 'Proactive Rebooking',

    ),
    const SliderPage(
      svg: 'assets/images/on_boarding/on_three.svg',
      body: "Relax and enjoy your journey with Rebooked. "
          "We've got your back, ensuring you avoid disruptions and don't miss out on those important events. "
          "Welcome to hassle-free, timely travel!",
      title: 'Travel with Peace of Mind',

    )
  ];
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom:80,
            child: PageView.builder(
              controller: controller,
              physics: const ScrollPhysics(),
              onPageChanged: (val) {
                pageIndex = val;
                setState(() {});
              },
              itemCount: _pageList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, i) {
                return _pageList[i];
              },
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                // height: 60,
                child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: WormEffect(
                        dotHeight: 6,
                        dotWidth:48,
                        dotColor: const Color(0xffD9D9D9),
                        activeDotColor: FrontendConfigs.kAppPrimaryColor)),
              ),
              const SizedBox(
                height: 38,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:18.0),
                child: AppButton(
                  width:MediaQuery.sizeOf(context).width,
                  onPressed: () {
                    if (pageIndex == 0) {
                      controller.jumpToPage(1);
                    } else if (pageIndex == 1) {
                      controller.jumpToPage(2);
                    } else if (pageIndex == 2) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PhoneNumberView()));
                    }
                    setState(() {});
                  },
                  btnLabel: pageIndex <= 0 ||pageIndex==1? 'Continue' : 'Let’s get started',
                ),
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ],
      ),
    );
  }
}