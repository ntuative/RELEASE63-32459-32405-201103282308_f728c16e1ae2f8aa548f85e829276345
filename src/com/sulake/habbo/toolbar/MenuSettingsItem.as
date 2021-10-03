package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2212:String;
      
      private var var_2369:Array;
      
      private var var_2370:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2212 = param1;
         this.var_2369 = param2;
         this.var_2370 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2212;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2369;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2370;
      }
   }
}
