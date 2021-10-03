package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_618:String;
      
      private var var_893:String;
      
      private var var_2241:String;
      
      private var var_1588:String;
      
      private var var_2244:int;
      
      private var var_2240:String;
      
      private var var_2243:int;
      
      private var var_2242:int;
      
      private var var_2239:int;
      
      private var _respectLeft:int;
      
      private var var_705:int;
      
      private var var_2201:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_618 = param1.readString();
         this.var_893 = param1.readString();
         this.var_2241 = param1.readString();
         this.var_1588 = param1.readString();
         this.var_2244 = param1.readInteger();
         this.var_2240 = param1.readString();
         this.var_2243 = param1.readInteger();
         this.var_2242 = param1.readInteger();
         this.var_2239 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_705 = param1.readInteger();
         this.var_2201 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get sex() : String
      {
         return this.var_893;
      }
      
      public function get customData() : String
      {
         return this.var_2241;
      }
      
      public function get realName() : String
      {
         return this.var_1588;
      }
      
      public function get tickets() : int
      {
         return this.var_2244;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2240;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2243;
      }
      
      public function get directMail() : int
      {
         return this.var_2242;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2239;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_705;
      }
      
      public function get identityId() : int
      {
         return this.var_2201;
      }
   }
}
