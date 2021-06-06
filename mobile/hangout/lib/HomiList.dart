import 'package:flutter/material.dart';


abstract class ListItem {}

class HeaderItem implements ListItem {
  final String heading;

  HeaderItem(this.heading);
}
class MessageItem implements ListItem {
  final String sender;
  final String message;

  MessageItem(this.sender, this.message);
}

class HomiList extends StatelessWidget {
  List<ListItem> items;

  HomiList(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
          centerTitle: true,
      ),
      body: ListView.separated(itemBuilder: (context , index) {
        final item = items[index];

        if (item is HeaderItem) {
          return Container(
            height: 50 ,
            child: makeHeader()
          );
        }
        else if (item is MessageItem){
          return ListTile(
            title: Text(item.sender),
            subtitle: Text(item.message),
          );
        }
      }
      , separatorBuilder: (context, index) {
          final item = items[index];
          if (item is HeaderItem) {
            return SizedBox.shrink();
          }
          else {
            return const Divider(
              color: Colors.red,
            );
          }
        },
        itemCount: items.length,)
      ,
    );
  }

  Widget makeHeader() {
   return  Card(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("data")
         ],
       )
   );
  }
}
