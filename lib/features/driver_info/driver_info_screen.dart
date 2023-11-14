import 'package:duseca_task/features/widgets/bar_graph.dart';
import 'package:duseca_task/features/widgets/text_button.dart';
import 'package:flutter/material.dart';

class DriverInfoScreen extends StatefulWidget {
  const DriverInfoScreen({super.key});

  @override
  State<DriverInfoScreen> createState() => _DriverInfoScreenState();
}

class _DriverInfoScreenState extends State<DriverInfoScreen> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Driver Info.',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          leading: InkWell(
            child: Container(
              width: 30,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
              ),
            ),
            onTap: (){
              Navigator.pop(context);
            },
          )),
      body: Column(
        children: [
          Container(
            color: Colors.red.shade50,
            padding: const EdgeInsets.all(8.0),
            height: 50,
            child: Expanded(
              child: TabBar(
                controller: _tabController,
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.redAccent.shade100,
                tabs: const [
                  Tab(text: 'Earnings',),
                  Tab(text: 'No. Rides'),
                  Tab(text: 'Billings'),
                  Tab(text: 'Reviews'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 250,
            width: 300,
            child: ColumnGraph(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('200.68.00 zl', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                TextButtonWidget(buttonText: 'Withdraw', callback: (){})
              ],
            ),
          ),
          const Divider(
            height: 50,
            indent: 50,
            endIndent: 50,
          )
        ],
      ),
    );
  }
}
