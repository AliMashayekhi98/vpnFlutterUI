import 'package:flutter/material.dart';
import 'package:vpn/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isactive = false;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: secndryColor),
        actionsIconTheme: const IconThemeData(color: secndryColor),
        title: const Text(
          "Azadi VPN",
          style: TextStyle(color: secndryColor),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.info_outline), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            DrawerHeader(
                child: Center(
              child: Text(
                "Azadi VPN",
                style: TextStyle(
                    color: kPrimaryClr,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            )),
            ListTile(
              leading: Icon(
                Icons.network_locked,
                color: Colors.black,
              ),
              title: Text(
                "Change Server",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),

            ListTile(
              leading: Icon(
                Icons.rate_review,
                color: Colors.black,
              ),
              title: Text(
                "Rate Us",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),

            ListTile(
              leading: Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: Text(
                "Share App",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),

            ListTile(
              leading: Icon(
                Icons.all_inbox_outlined,
                color: Colors.black,
              ),
              title: Text(
                "Target For Build app",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.arrow_forward_ios,size: 18,),
            ),
Spacer(),
            Text("V 1.0.0" , style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: _size.height * 0.11,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    isactive = !isactive;
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: kPrimaryClr,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                        color: kWhiteClr,
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.power_settings_new,
                            size: 30,
                            color: isactive == true ? kPrimaryClr : Colors.grey,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            isactive == true ? "STOP" : "START",
                            style: TextStyle(
                              color:
                                  isactive == true ? Colors.grey: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              //margin:  const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: isactive == true
                      ? kPrimaryClr : kPrimaryClr.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  isactive == true ? "Connected" : "Not Connected",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: secndryColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                //margin:  const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kWhiteClr, borderRadius: BorderRadius.circular(10)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Select Location",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: secndryColor),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: secndryColor,
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Download",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "128kbps" : "0.0",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kPrimaryClr.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_downward,
                      color: kPrimaryClr,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upload",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: secndryColor),
                      ),
                      Text(
                        isactive == true ? "128kbps" : "0.0",
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
