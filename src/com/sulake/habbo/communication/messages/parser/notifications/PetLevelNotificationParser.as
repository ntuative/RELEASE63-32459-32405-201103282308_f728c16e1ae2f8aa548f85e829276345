package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1817:int;
      
      private var var_2295:String;
      
      private var var_1381:int;
      
      private var var_1161:int;
      
      private var var_1760:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1817 = param1.readInteger();
         this.var_2295 = param1.readString();
         this.var_1381 = param1.readInteger();
         this.var_1161 = param1.readInteger();
         this.var_1760 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1817;
      }
      
      public function get petName() : String
      {
         return this.var_2295;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get petType() : int
      {
         return this.var_1161;
      }
      
      public function get breed() : int
      {
         return this.var_1760;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
