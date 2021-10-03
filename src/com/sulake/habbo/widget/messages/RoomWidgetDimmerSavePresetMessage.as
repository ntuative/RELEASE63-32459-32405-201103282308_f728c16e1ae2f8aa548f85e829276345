package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_859:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2281:int;
      
      private var var_2280:int;
      
      private var _color:uint;
      
      private var var_1263:int;
      
      private var var_2323:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_859);
         this.var_2281 = param1;
         this.var_2280 = param2;
         this._color = param3;
         this.var_1263 = param4;
         this.var_2323 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2281;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2280;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1263;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2323;
      }
   }
}
