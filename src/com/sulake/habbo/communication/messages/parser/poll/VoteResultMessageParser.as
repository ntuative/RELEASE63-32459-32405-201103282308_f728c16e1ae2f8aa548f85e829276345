package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1131:String;
      
      private var var_1339:Array;
      
      private var var_1064:Array;
      
      private var var_1824:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1131;
      }
      
      public function get choices() : Array
      {
         return this.var_1339.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1064.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1824;
      }
      
      public function flush() : Boolean
      {
         this.var_1131 = "";
         this.var_1339 = [];
         this.var_1064 = [];
         this.var_1824 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1131 = param1.readString();
         this.var_1339 = [];
         this.var_1064 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1339.push(param1.readString());
            this.var_1064.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1824 = param1.readInteger();
         return true;
      }
   }
}
