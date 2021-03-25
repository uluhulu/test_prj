import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_prj/constant/strings.dart';
import 'package:test_prj/providers/horizontal_items.dart';
import 'package:test_prj/providers/vertical_items.dart';
import 'package:test_prj/screens/screen_2/widget/close_button.dart';
import 'package:test_prj/screens/screen_2/widget/list_item.dart';
import 'package:test_prj/screens/screen_2/widget/title.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key key}) : super(key: key);
  static const routeName = '/screen_2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CloseButtonScreen2(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    _buildHorizontalList(),
                    _buildVerticalList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildHorizontalList() {
    return SliverToBoxAdapter(
      child: Consumer<HorizontalItemsProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              ListTitle(
                text: '$section1Text (${provider.itemsCount})',
              ),
              Container(
                height: 185,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: provider.itemsCount,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: index == 0
                          ? const EdgeInsets.only(left: 16.0)
                          : EdgeInsets.zero,
                      child: ListItem(
                        listItemTitle: provider.itemAt(index),
                        width: 350,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildVerticalList() {
    return SliverToBoxAdapter(
      child: Consumer<VerticalItemsProvider>(
        builder: (context, provider, child) {
          return Column(
            children: [
              ListTitle(
                text: '$section2Text (${provider.itemsCount})',
              ),
              ListView.builder(
                itemCount: provider.itemsCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListItem(
                    listItemTitle: provider.itemAt(index),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
