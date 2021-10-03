package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_65:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_598:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_807:String = "HTE_TOOLBAR_RESIZED";
       
      
      private var var_772:String;
      
      private var var_536:String;
      
      private var var_1175:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_772 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_772;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_536 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_536;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1175 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1175;
      }
   }
}
