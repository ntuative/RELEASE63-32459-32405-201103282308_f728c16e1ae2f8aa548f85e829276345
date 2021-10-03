package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_240:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2142:int = 0;
      
      private var var_2140:int = 0;
      
      private var var_2141:int = 0;
      
      private var var_2139:Boolean = false;
      
      private var var_2138:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_240,param6,param7);
         this.var_2142 = param1;
         this.var_2140 = param2;
         this.var_2141 = param3;
         this.var_2139 = param4;
         this.var_2138 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2142;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2140;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2141;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2139;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2138;
      }
   }
}
