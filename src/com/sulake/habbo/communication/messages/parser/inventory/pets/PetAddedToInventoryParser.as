package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetAddedToInventoryParser implements IMessageParser
   {
       
      
      private var var_868:PetData;
      
      private var var_2652:Boolean;
      
      public function PetAddedToInventoryParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_868 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_868 = new PetData(param1);
         this.var_2652 = param1.readBoolean();
         return true;
      }
      
      public function get pet() : PetData
      {
         return this.var_868;
      }
      
      public function get purchased() : Boolean
      {
         return this.var_2652;
      }
   }
}
