package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_377:int;
      
      private var var_842:Boolean;
      
      private var var_930:String;
      
      private var _ownerName:String;
      
      private var var_2116:int;
      
      private var var_2584:int;
      
      private var var_2612:int;
      
      private var var_1616:String;
      
      private var var_2613:int;
      
      private var var_2498:Boolean;
      
      private var var_764:int;
      
      private var var_1440:int;
      
      private var var_2611:String;
      
      private var var_851:Array;
      
      private var var_2610:RoomThumbnailData;
      
      private var var_2112:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_851 = new Array();
         super();
         this.var_377 = param1.readInteger();
         this.var_842 = param1.readBoolean();
         this.var_930 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2116 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this.var_1616 = param1.readString();
         this.var_2613 = param1.readInteger();
         this.var_2498 = param1.readBoolean();
         this.var_764 = param1.readInteger();
         this.var_1440 = param1.readInteger();
         this.var_2611 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_851.push(_loc4_);
            _loc3_++;
         }
         this.var_2610 = new RoomThumbnailData(param1);
         this.var_2112 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_377;
      }
      
      public function get event() : Boolean
      {
         return this.var_842;
      }
      
      public function get roomName() : String
      {
         return this.var_930;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2116;
      }
      
      public function get userCount() : int
      {
         return this.var_2584;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2612;
      }
      
      public function get description() : String
      {
         return this.var_1616;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2613;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2498;
      }
      
      public function get score() : int
      {
         return this.var_764;
      }
      
      public function get categoryId() : int
      {
         return this.var_1440;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2611;
      }
      
      public function get tags() : Array
      {
         return this.var_851;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2610;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2112;
      }
   }
}
