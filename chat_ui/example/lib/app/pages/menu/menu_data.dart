import '../app_bar/app_bar_home_page.dart';
import '../app_bar/app_bar_message_page.dart';
import 'menu_item_entity.dart';

class MenuData {
  static List<MenuItemEntity> items = [
    const MenuItemEntity(title: 'App bar - Home', page: AppBarHomePage()),
    const MenuItemEntity(title: 'App bar - Message', page: AppBarMessagePage()),
  ];
}
