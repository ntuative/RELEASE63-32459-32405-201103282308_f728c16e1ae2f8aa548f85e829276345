package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1647:int;
      
      private var _currentPosition:int;
      
      private var var_1645:int;
      
      private var var_1646:int;
      
      private var var_1644:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1647;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1645;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1646;
      }
      
      public function get syncCount() : int
      {
         return this.var_1644;
      }
      
      public function flush() : Boolean
      {
         this.var_1647 = -1;
         this._currentPosition = -1;
         this.var_1645 = -1;
         this.var_1646 = -1;
         this.var_1644 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1647 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1645 = param1.readInteger();
         this.var_1646 = param1.readInteger();
         this.var_1644 = param1.readInteger();
         return true;
      }
   }
}
