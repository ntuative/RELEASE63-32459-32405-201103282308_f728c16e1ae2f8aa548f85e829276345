package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_802:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1228:String = "inventory_effects";
      
      public static const const_1221:String = "inventory_badges";
      
      public static const const_1623:String = "inventory_clothes";
      
      public static const const_1510:String = "inventory_furniture";
       
      
      private var var_2211:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_802);
         this.var_2211 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2211;
      }
   }
}
