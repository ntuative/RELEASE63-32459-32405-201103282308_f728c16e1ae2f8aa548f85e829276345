package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_654:int = 1;
      
      public static const const_914:int = 2;
      
      public static const const_737:int = 3;
      
      public static const const_1160:int = 4;
      
      public static const const_927:int = 5;
      
      public static const const_1149:int = 6;
       
      
      private var _type:int;
      
      private var var_1144:int;
      
      private var var_2207:String;
      
      private var var_2444:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1144 = param2;
         this.var_2207 = param3;
         this.var_2444 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2207;
      }
      
      public function get time() : String
      {
         return this.var_2444;
      }
      
      public function get senderId() : int
      {
         return this.var_1144;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
