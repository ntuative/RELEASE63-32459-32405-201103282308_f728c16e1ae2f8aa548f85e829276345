package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_933:Array;
      
      private var var_2654:String;
      
      private var var_2656:String;
      
      private var var_2655:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         this.var_933 = param1;
         this.var_2654 = param2;
         this.var_2656 = param3;
         this.var_2655 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_933;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2654;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2656;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2655;
      }
   }
}
