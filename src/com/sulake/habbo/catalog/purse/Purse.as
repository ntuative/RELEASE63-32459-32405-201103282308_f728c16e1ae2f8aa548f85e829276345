package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_209:int = 0;
       
      
      private var var_2195:int = 0;
      
      private var var_1419:Dictionary;
      
      private var var_1766:int = 0;
      
      private var var_1767:int = 0;
      
      private var var_2310:Boolean = false;
      
      private var var_2470:int = 0;
      
      private var var_2469:int = 0;
      
      public function Purse()
      {
         this.var_1419 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2195;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2195 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1766;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1766 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1767;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1767 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1766 > 0 || this.var_1767 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2310;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2310 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2470;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2470 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2469;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2469 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1419;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1419 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1419[param1];
      }
   }
}
