package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1423:Boolean;
      
      private var var_2298:int;
      
      private var var_1741:int;
      
      private var var_1740:int;
      
      private var var_2297:int;
      
      private var var_2299:int;
      
      private var var_2296:int;
      
      private var var_2300:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1423;
      }
      
      public function get commission() : int
      {
         return this.var_2298;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1741;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1740;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2299;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2297;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2296;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2300;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1423 = param1.readBoolean();
         this.var_2298 = param1.readInteger();
         this.var_1741 = param1.readInteger();
         this.var_1740 = param1.readInteger();
         this.var_2299 = param1.readInteger();
         this.var_2297 = param1.readInteger();
         this.var_2296 = param1.readInteger();
         this.var_2300 = param1.readInteger();
         return true;
      }
   }
}
