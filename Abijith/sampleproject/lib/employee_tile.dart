import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class EmployeeTiles extends StatelessWidget {
  final int itemNo;

  const EmployeeTiles(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    final imageurls = [
      'https://assets.euromoneydigital.com/dims4/default/eb1abe3/2147483647/strip/true/crop/1185x675+0+0/resize/800x456!/quality/90/?url=http%3A%2F%2Feuromoney-brightspot.s3.amazonaws.com%2F26%2F5b%2F3c1c1ad4fb3e8267135e06fea109%2Falibaba20logo.jpg',
      'https://assets-global.website-files.com/600fe6e1ff56087409a9f096/60537020dbb180813c767e63_ebay.jpg',
      'https://assets.entrepreneur.com/content/3x2/2000/20180511063849-flipkart-logo-detail-icon.jpeg?auto=webp&quality=95&crop=16:9&width=675',
      'https://static.businessworld.in/article/article_extra_large_image/1597056012_CNRvas_amazon_dkblue_noto_email_v2016_us_main_CB468775337_.png',
      'https://www.perficient.com/-/media/images/insights/research/case-study-logos/myntra_logo-min.ashx?h=1600&iar=0&w=5100&hash=6ABE517E5CDA2D1710DF42786417FE33',
      'https://images.livemint.com/img/2022/03/23/1600x900/Meesho_1648023411457_1648023418806.jpg',
      'https://labinmotion.com/wp-content/uploads/2021/09/nykaa.jpg',
      'https://static.businessworld.in/article/article_extra_large_image/1609147522_O1aw88_BMS.jpg',
      'https://i.pinimg.com/originals/ee/20/74/ee2074960cfd0aca019fea0bbc3889de.png'
    ];

    final urls = [
      'https://www.alibaba.com/premium/alibaba_stone.html?src=sem_ggl&from=sem_ggl&cmpgn=10905266397&adgrp=122423864557&fditm=&tgt=kwd-384324908849&locintrst=&locphyscl=1007768&mtchtyp=b&ntwrk=g&device=c&dvcmdl=&creative=522203677597&plcmnt=&plcmntcat=&p1=&p2=&aceid=&position=&localKeyword=alibaba%20stone&GGS=Y',
      'https://www.ebay.com/b/Electronics/bn_7000259124',
      'https://www.flipkart.com/?s_kwcid=AL!739!3!582822043916!e!!g!!flipkart&gclsrc=aw.ds&&semcmpid=sem_8024046704_brand_exe_buyers_goog',
      'https://www.amazon.in/',
      'https://www.myntra.com/?utm_source=perf_google_search_brand&utm_medium=perf_google_search_brand&utm_campaign=Search%20-%20Myntra%20Brand%20(India)',
      'https://www.meesho.com/',
      'https://www.nykaa.com/',
      'https://in.bookmyshow.com/bengaluru/movies/kgf-chapter-2/ET00098647',
      'https://www.lenskart.com/',
    ];

    var screenheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromARGB(255, 155, 197, 232),
      ),
      width: screenwidth / 3,
      margin: const EdgeInsets.fromLTRB(35, 20, 20, 5),
      child: Column(
        children: [
          Image.network(
            imageurls[itemNo],
            height: 170,
            width: 170,
          ),
          Expanded(
            child: ListTile(
              tileColor: Color.fromARGB(255, 123, 186, 238),
              hoverColor: Color.fromARGB(255, 254, 236, 210),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: screenheight / 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: MaterialButton(
                      color: Colors.red,
                      onPressed: () {
                        _launchURL(urls[itemNo]);
                      },
                      child: const Text(
                        'Redeem',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _launchURL(final url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
