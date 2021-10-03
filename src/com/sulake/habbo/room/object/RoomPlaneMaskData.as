package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_2126:Number = 0.0;
      
      private var var_2127:Number = 0.0;
      
      private var var_2125:Number = 0.0;
      
      private var var_2124:Number = 0.0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2126 = param1;
         this.var_2127 = param2;
         this.var_2125 = param3;
         this.var_2124 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2126;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2127;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2125;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2124;
      }
   }
}
