import '../app_bar/app_bar_home_page.dart';
import '../app_bar/app_bar_message_page.dart';
import '../chat/chat_card_page.dart';
import '../chat/chat_menu_item_page.dart';
import '../message/message_page.dart';
import '../status/status_item_page.dart';
import 'menu_item_entity.dart';

class MenuData {
  static List<MenuItemEntity> items = [
    const MenuItemEntity(title: 'App bar - Home', page: AppBarHomePage()),
    const MenuItemEntity(title: 'App bar - Message', page: AppBarMessagePage()),
    const MenuItemEntity(title: 'Status - Item', page: StatusItemPage()),
    const MenuItemEntity(title: 'Chat - Card', page: ChatCardPage()),
    const MenuItemEntity(title: 'Chat - Menu Item', page: ChatMenuItemPage()),
    const MenuItemEntity(title: 'Message - Menu Item', page: MessagePage()),
  ];
}
