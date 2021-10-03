package com.sulake.habbo.navigator.events
{
   import flash.events.Event;
   
   public class HabboNavigatorOpenedEvent extends Event
   {
      
      public static const const_1518:String = "HN_OPENED";
       
      
      public function HabboNavigatorOpenedEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_1518,param1,param2);
      }
   }
}
