package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1502:String = "RWEBOM_ECOTRONBOX_OPENED";
       
      
      private var var_1451:String;
      
      private var var_1915:int;
      
      public function RoomWidgetEcotronBoxOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         this.var_1451 = param2;
         this.var_1915 = param3;
      }
      
      public function get itemType() : String
      {
         return this.var_1451;
      }
      
      public function get classId() : int
      {
         return this.var_1915;
      }
   }
}
