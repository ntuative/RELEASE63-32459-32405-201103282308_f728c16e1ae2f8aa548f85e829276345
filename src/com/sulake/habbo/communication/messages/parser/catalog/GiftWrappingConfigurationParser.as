package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2270:Boolean;
      
      private var var_2271:int;
      
      private var var_1672:Array;
      
      private var var_829:Array;
      
      private var var_828:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2270;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2271;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1672;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_829;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_828;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1672 = [];
         this.var_829 = [];
         this.var_828 = [];
         this.var_2270 = param1.readBoolean();
         this.var_2271 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1672.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_829.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_828.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
