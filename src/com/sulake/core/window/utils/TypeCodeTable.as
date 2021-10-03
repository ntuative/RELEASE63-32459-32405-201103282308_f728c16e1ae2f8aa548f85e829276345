package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_843;
         param1["bitmap"] = const_682;
         param1["border"] = const_803;
         param1["border_notify"] = const_1572;
         param1["button"] = const_527;
         param1["button_thick"] = const_712;
         param1["button_icon"] = const_1511;
         param1["button_group_left"] = const_750;
         param1["button_group_center"] = const_701;
         param1["button_group_right"] = const_690;
         param1["canvas"] = const_695;
         param1["checkbox"] = const_704;
         param1["closebutton"] = const_1063;
         param1["container"] = const_364;
         param1["container_button"] = const_825;
         param1["display_object_wrapper"] = const_793;
         param1["dropmenu"] = const_540;
         param1["dropmenu_item"] = const_525;
         param1["frame"] = const_374;
         param1["frame_notify"] = const_1670;
         param1["header"] = const_780;
         param1["html"] = const_1113;
         param1["icon"] = const_1048;
         param1["itemgrid"] = const_1118;
         param1["itemgrid_horizontal"] = const_460;
         param1["itemgrid_vertical"] = const_648;
         param1["itemlist"] = const_1243;
         param1["itemlist_horizontal"] = const_399;
         param1["itemlist_vertical"] = const_409;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1523;
         param1["menu"] = const_1611;
         param1["menu_item"] = const_1589;
         param1["submenu"] = const_1231;
         param1["minimizebox"] = const_1693;
         param1["notify"] = const_1634;
         param1["null"] = const_789;
         param1["password"] = const_752;
         param1["radiobutton"] = const_705;
         param1["region"] = const_539;
         param1["restorebox"] = const_1672;
         param1["scaler"] = const_759;
         param1["scaler_horizontal"] = const_1667;
         param1["scaler_vertical"] = const_1534;
         param1["scrollbar_horizontal"] = const_524;
         param1["scrollbar_vertical"] = const_875;
         param1["scrollbar_slider_button_up"] = const_1182;
         param1["scrollbar_slider_button_down"] = const_1244;
         param1["scrollbar_slider_button_left"] = const_1196;
         param1["scrollbar_slider_button_right"] = const_1175;
         param1["scrollbar_slider_bar_horizontal"] = const_1086;
         param1["scrollbar_slider_bar_vertical"] = const_1120;
         param1["scrollbar_slider_track_horizontal"] = const_1025;
         param1["scrollbar_slider_track_vertical"] = const_1202;
         param1["scrollable_itemlist"] = const_1650;
         param1["scrollable_itemlist_vertical"] = const_487;
         param1["scrollable_itemlist_horizontal"] = const_1075;
         param1["selector"] = const_916;
         param1["selector_list"] = const_658;
         param1["submenu"] = const_1231;
         param1["tab_button"] = const_600;
         param1["tab_container_button"] = const_1151;
         param1["tab_context"] = const_575;
         param1["tab_content"] = const_1235;
         param1["tab_selector"] = const_640;
         param1["text"] = const_439;
         param1["input"] = const_909;
         param1["toolbar"] = const_1461;
         param1["tooltip"] = const_352;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
