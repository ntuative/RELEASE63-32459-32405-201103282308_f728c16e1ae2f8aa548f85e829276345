package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_2011:String = "";
      
      private var var_1970:String = "";
      
      private var var_2365:String = "";
      
      private var var_2472:Number = 0;
      
      private var var_2476:Number = 0;
      
      private var var_2479:Number = 0;
      
      private var var_2478:Number = 0;
      
      private var var_2473:Boolean = false;
      
      private var var_2477:Boolean = false;
      
      private var var_2474:Boolean = false;
      
      private var var_2475:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_2011 = param2;
         this.var_1970 = param3;
         this.var_2365 = param4;
         this.var_2472 = param5;
         this.var_2476 = param6;
         this.var_2479 = param7;
         this.var_2478 = param8;
         this.var_2473 = param9;
         this.var_2477 = param10;
         this.var_2474 = param11;
         this.var_2475 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_2011;
      }
      
      public function get canvasId() : String
      {
         return this.var_1970;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2365;
      }
      
      public function get screenX() : Number
      {
         return this.var_2472;
      }
      
      public function get screenY() : Number
      {
         return this.var_2476;
      }
      
      public function get localX() : Number
      {
         return this.var_2479;
      }
      
      public function get localY() : Number
      {
         return this.var_2478;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2473;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2477;
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
