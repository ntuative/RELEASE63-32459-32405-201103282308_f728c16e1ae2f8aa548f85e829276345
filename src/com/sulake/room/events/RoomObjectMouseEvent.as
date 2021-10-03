package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_153:String = "ROE_MOUSE_CLICK";
      
      public static const const_1878:String = "ROE_MOUSE_ENTER";
      
      public static const const_446:String = "ROE_MOUSE_MOVE";
      
      public static const const_1850:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1971:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_2011:String = "";
      
      private var var_2477:Boolean;
      
      private var var_2473:Boolean;
      
      private var var_2474:Boolean;
      
      private var var_2475:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_2011 = param2;
         this.var_2477 = param5;
         this.var_2473 = param6;
         this.var_2474 = param7;
         this.var_2475 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_2011;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2477;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2473;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2474;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2475;
      }
   }
}
