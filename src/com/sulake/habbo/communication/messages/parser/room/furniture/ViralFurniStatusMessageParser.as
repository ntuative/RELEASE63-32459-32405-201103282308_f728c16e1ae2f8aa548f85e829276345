package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_178:String;
      
      private var var_391:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1319:int = 0;
      
      private var var_397:int;
      
      private var _shareId:String;
      
      private var var_2624:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_178;
      }
      
      public function get objectId() : int
      {
         return this.var_391;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1319;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_397;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2624;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_178 = param1.readString();
         this.var_391 = param1.readInteger();
         this.var_397 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2624 = param1.readString();
         this.var_1319 = param1.readInteger();
         return true;
      }
   }
}
