package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_75:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_183:String = "e";
       
      
      private var var_1988:String;
      
      private var var_2686:int;
      
      private var var_1520:String;
      
      private var var_1521:int;
      
      private var var_1989:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1988 = param1.readString();
         this.var_2686 = param1.readInteger();
         this.var_1520 = param1.readString();
         this.var_1521 = param1.readInteger();
         this.var_1989 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1988;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2686;
      }
      
      public function get extraParam() : String
      {
         return this.var_1520;
      }
      
      public function get productCount() : int
      {
         return this.var_1521;
      }
      
      public function get expiration() : int
      {
         return this.var_1989;
      }
   }
}
