package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFlatControlUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2675:Boolean = false;
      
      private var var_2674:String;
      
      public function RoomObjectAvatarFlatControlUpdateMessage(param1:String)
      {
         super();
         this.var_2674 = param1;
         if(param1 != null && param1.indexOf("useradmin") != -1)
         {
            this.var_2675 = true;
         }
      }
      
      public function get isAdmin() : Boolean
      {
         return this.var_2675;
      }
      
      public function get rawData() : String
      {
         return this.var_2674;
      }
   }
}