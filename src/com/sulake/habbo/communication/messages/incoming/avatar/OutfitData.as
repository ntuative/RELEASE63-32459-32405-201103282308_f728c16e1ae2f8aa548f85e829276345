package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1782:int;
      
      private var var_2108:String;
      
      private var var_935:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1782 = param1.readInteger();
         this.var_2108 = param1.readString();
         this.var_935 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1782;
      }
      
      public function get figureString() : String
      {
         return this.var_2108;
      }
      
      public function get gender() : String
      {
         return this.var_935;
      }
   }
}
