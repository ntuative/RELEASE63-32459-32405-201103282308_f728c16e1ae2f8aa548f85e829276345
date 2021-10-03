package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2382:int;
      
      private var var_2384:int;
      
      private var var_2383:int;
      
      private var _dayOffsets:Array;
      
      private var var_1844:Array;
      
      private var var_1845:Array;
      
      private var var_2381:int;
      
      private var var_2380:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2382 = param1.readInteger();
         this.var_2384 = param1.readInteger();
         this.var_2383 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1844 = [];
         this.var_1845 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1844.push(param1.readInteger());
            this.var_1845.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2380 = param1.readInteger();
         this.var_2381 = param1.readInteger();
         return true;
      }
   }
}
