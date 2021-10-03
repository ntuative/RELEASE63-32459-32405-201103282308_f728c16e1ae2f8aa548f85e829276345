package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_669:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1518:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_669);
         this.var_1518 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1518;
      }
   }
}
