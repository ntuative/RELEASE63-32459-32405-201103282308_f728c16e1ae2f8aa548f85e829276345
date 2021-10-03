package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_2079:int;
      
      private var var_1951:Number;
      
      private var var_2719:Number;
      
      private var var_2718:int;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number)
      {
         super();
         this.var_2079 = param1;
         this.var_1951 = param2;
         this.var_2719 = param3;
         this.var_2718 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_2079;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1951 < 0)
         {
            return 0;
         }
         return this.var_1951 + (getTimer() - this.var_2718) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2719;
      }
   }
}
