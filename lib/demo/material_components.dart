import 'package:flutter/material.dart';
import 'package:flutterapptext/demo/form_demo.dart';
import '../demo/button_demo.dart';
import '../demo/floating_action_button_demo.dart';
import '../demo/popup_menu_button_demo.dart';
import '../demo/form_demo.dart';
import '../demo/checkbox_demo.dart';
import '../demo/Radio_demo.dart';
import '../demo/switch_demo.dart';
import '../demo/slider_demo.dart';
import '../demo/datetime_demo.dart';
import '../demo/simple_dialog_demo.dart';
import '../demo/alert_dialog_demo.dart';
import '../demo/bottom_sheet_demo.dart';
import '../demo/snack_bar_demo.dart';
import '../demo/expansion_panel_demo.dart';
import '../demo/chip_demo.dart';
import '../demo/data_table_demo.dart';
import '../demo/paginated_data_table_demo.dart';
import '../demo/card_demo.dart';
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),

      body: ListView(
        children: <Widget>[
          ListItem(title: 'CardDemo',page: CardDemo()),
          ListItem(title: 'PaginatedDataTableDemo',page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTableDemo',page: DataTableDemo()),
          ListItem(title: 'ChipDemo',page: ChipDemo()),
          ListItem(title: 'ExpansionPanelDemo',page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo',page: SanckBarDemo()),
          ListItem(title: 'BottomSheetDemo',page: BottomSheetDemo()),
          ListItem(title: 'AlertDialogDemo',page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialogDemo',page: SimpleDialogDemo()),
          ListItem(title: 'DateTimeDemo',page: DateTimeDemo()),
          ListItem(title: 'SliderDemo',page: SliderDemo()),
          ListItem(title: 'SwitchDemo',page: SwitchDemo()),
          ListItem(title: 'RadioDemo',page: RadioDemo()),
          ListItem(title: 'CheckboxDemo',page: CheckboxDemo()),
          ListItem(title: 'Form',page: FormDemo()),
          ListItem(title: 'PopupMenuButton',page: PopupMenuButtonDemo()),
          ListItem(title: 'Button',page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton',page: FloatingActionButtonDemo()),
        ],
      ),
    );
  }
}



class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
