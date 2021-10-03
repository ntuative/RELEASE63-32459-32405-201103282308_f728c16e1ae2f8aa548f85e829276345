package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2382:int;
      
      private var var_2384:int;
      
      private var var_2383:int;
      
      private var _dayOffsets:Array;
      
      private var var_1844:Array;
      
      private var var_1845:Array;
      
      private var var_2381:int;
      
      private var var_2380:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2382;
      }
      
      public function get offerCount() : int
      {
         return this.var_2384;
      }
      
      public function get historyLength() : int
      {
         return this.var_2383;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1844;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1845;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2381;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2380;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2382 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2384 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2383 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1844 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1845 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2381 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2380 = param1;
      }
   }
}
