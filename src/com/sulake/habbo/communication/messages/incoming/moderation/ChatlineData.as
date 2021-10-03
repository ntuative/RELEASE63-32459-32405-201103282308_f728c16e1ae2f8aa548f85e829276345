package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2290:int;
      
      private var var_2291:int;
      
      private var var_2292:int;
      
      private var var_2289:String;
      
      private var var_1797:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2290 = param1.readInteger();
         this.var_2291 = param1.readInteger();
         this.var_2292 = param1.readInteger();
         this.var_2289 = param1.readString();
         this.var_1797 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2290;
      }
      
      public function get minute() : int
      {
         return this.var_2291;
      }
      
      public function get chatterId() : int
      {
         return this.var_2292;
      }
      
      public function get chatterName() : String
      {
         return this.var_2289;
      }
      
      public function get msg() : String
      {
         return this.var_1797;
      }
   }
}
