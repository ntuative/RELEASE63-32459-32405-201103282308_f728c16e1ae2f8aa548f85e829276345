package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_618:String;
      
      private var var_2401:String;
      
      private var var_935:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_618 = param1;
         this.var_935 = param2;
         this.var_2401 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get race() : String
      {
         return this.var_2401;
      }
      
      public function get gender() : String
      {
         return this.var_935;
      }
   }
}
