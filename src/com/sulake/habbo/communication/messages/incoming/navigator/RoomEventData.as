package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1178:Boolean;
      
      private var var_2457:int;
      
      private var var_2455:String;
      
      private var var_377:int;
      
      private var var_2459:int;
      
      private var var_2456:String;
      
      private var var_2460:String;
      
      private var var_2458:String;
      
      private var var_851:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_851 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1178 = false;
            return;
         }
         this.var_1178 = true;
         this.var_2457 = int(_loc2_);
         this.var_2455 = param1.readString();
         this.var_377 = int(param1.readString());
         this.var_2459 = param1.readInteger();
         this.var_2456 = param1.readString();
         this.var_2460 = param1.readString();
         this.var_2458 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_851.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_851 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2457;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2455;
      }
      
      public function get flatId() : int
      {
         return this.var_377;
      }
      
      public function get eventType() : int
      {
         return this.var_2459;
      }
      
      public function get eventName() : String
      {
         return this.var_2456;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2460;
      }
      
      public function get creationTime() : String
      {
         return this.var_2458;
      }
      
      public function get tags() : Array
      {
         return this.var_851;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1178;
      }
   }
}
