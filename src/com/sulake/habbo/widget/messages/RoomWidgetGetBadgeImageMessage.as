package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_846:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_292:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_846);
         this.var_292 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_292;
      }
   }
}
