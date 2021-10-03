package com.sulake.habbo.session
{
   public class GivableBadgeData
   {
       
      
      private var var_292:int;
      
      private var var_2743:String;
      
      public function GivableBadgeData(param1:int, param2:String)
      {
         super();
         this.var_292 = param1;
         this.var_2743 = param2;
      }
      
      public function get badgeId() : int
      {
         return this.var_292;
      }
      
      public function get achievementTypeName() : String
      {
         return this.var_2743;
      }
   }
}
