package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2132:int;
      
      private var var_1451:String;
      
      private var _objId:int;
      
      private var var_1915:int;
      
      private var _category:int;
      
      private var var_2080:String;
      
      private var var_2131:Boolean;
      
      private var var_2134:Boolean;
      
      private var var_2135:Boolean;
      
      private var var_2130:Boolean;
      
      private var var_2133:int;
      
      private var var_1532:int;
      
      private var var_1782:String = "";
      
      private var var_2079:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2132 = param1;
         this.var_1451 = param2;
         this._objId = param3;
         this.var_1915 = param4;
         this._category = param5;
         this.var_2080 = param6;
         this.var_2131 = param7;
         this.var_2134 = param8;
         this.var_2135 = param9;
         this.var_2130 = param10;
         this.var_2133 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1782 = param1;
         this.var_1532 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2132;
      }
      
      public function get itemType() : String
      {
         return this.var_1451;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1915;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2080;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2131;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2134;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2135;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2130;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2133;
      }
      
      public function get slotId() : String
      {
         return this.var_1782;
      }
      
      public function get songId() : int
      {
         return this.var_2079;
      }
      
      public function get extra() : int
      {
         return this.var_1532;
      }
   }
}
