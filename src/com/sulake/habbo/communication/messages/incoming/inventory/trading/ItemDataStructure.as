package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2286:int;
      
      private var var_1451:String;
      
      private var var_2518:int;
      
      private var var_2519:int;
      
      private var _category:int;
      
      private var var_2080:String;
      
      private var var_1532:int;
      
      private var var_2517:int;
      
      private var var_2521:int;
      
      private var var_2516:int;
      
      private var var_2520:int;
      
      private var var_2515:Boolean;
      
      private var var_2926:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2286 = param1;
         this.var_1451 = param2;
         this.var_2518 = param3;
         this.var_2519 = param4;
         this._category = param5;
         this.var_2080 = param6;
         this.var_1532 = param7;
         this.var_2517 = param8;
         this.var_2521 = param9;
         this.var_2516 = param10;
         this.var_2520 = param11;
         this.var_2515 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2286;
      }
      
      public function get itemType() : String
      {
         return this.var_1451;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2518;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2519;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2080;
      }
      
      public function get extra() : int
      {
         return this.var_1532;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2517;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2515;
      }
      
      public function get songID() : int
      {
         return this.var_1532;
      }
   }
}
