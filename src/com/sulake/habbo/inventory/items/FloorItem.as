package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2080:String;
      
      protected var var_1532:Number;
      
      protected var var_2853:Boolean;
      
      protected var var_2852:Boolean;
      
      protected var var_2515:Boolean;
      
      protected var var_2567:Boolean;
      
      protected var var_2861:int;
      
      protected var var_2521:int;
      
      protected var var_2516:int;
      
      protected var var_2520:int;
      
      protected var var_1782:String;
      
      protected var var_2079:int;
      
      protected var var_967:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2515 = param5;
         this.var_2852 = param6;
         this.var_2853 = param7;
         this.var_2567 = param8;
         this.var_2080 = param9;
         this.var_1532 = param10;
         this.var_2861 = param11;
         this.var_2521 = param12;
         this.var_2516 = param13;
         this.var_2520 = param14;
         this.var_1782 = param15;
         this.var_2079 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2080;
      }
      
      public function get extra() : Number
      {
         return this.var_1532;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2853;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2852;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2515;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2567;
      }
      
      public function get expires() : int
      {
         return this.var_2861;
      }
      
      public function get creationDay() : int
      {
         return this.var_2521;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2516;
      }
      
      public function get creationYear() : int
      {
         return this.var_2520;
      }
      
      public function get slotId() : String
      {
         return this.var_1782;
      }
      
      public function get songId() : int
      {
         return this.var_2079;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_967 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_967;
      }
   }
}
