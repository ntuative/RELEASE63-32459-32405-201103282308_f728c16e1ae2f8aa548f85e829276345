package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1139:int = 1;
      
      public static const const_839:int = 2;
      
      public static const const_681:int = 3;
      
      public static const const_1465:int = 4;
       
      
      private var _index:int;
      
      private var var_2587:String;
      
      private var var_2588:String;
      
      private var var_2583:Boolean;
      
      private var var_2586:String;
      
      private var var_924:String;
      
      private var var_2585:int;
      
      private var var_2584:int;
      
      private var _type:int;
      
      private var var_2232:String;
      
      private var var_952:GuestRoomData;
      
      private var var_951:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2587 = param1.readString();
         this.var_2588 = param1.readString();
         this.var_2583 = param1.readInteger() == 1;
         this.var_2586 = param1.readString();
         this.var_924 = param1.readString();
         this.var_2585 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1139)
         {
            this.var_2232 = param1.readString();
         }
         else if(this._type == const_681)
         {
            this.var_951 = new PublicRoomData(param1);
         }
         else if(this._type == const_839)
         {
            this.var_952 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_952 != null)
         {
            this.var_952.dispose();
            this.var_952 = null;
         }
         if(this.var_951 != null)
         {
            this.var_951.dispose();
            this.var_951 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2587;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2588;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2583;
      }
      
      public function get picText() : String
      {
         return this.var_2586;
      }
      
      public function get picRef() : String
      {
         return this.var_924;
      }
      
      public function get folderId() : int
      {
         return this.var_2585;
      }
      
      public function get tag() : String
      {
         return this.var_2232;
      }
      
      public function get userCount() : int
      {
         return this.var_2584;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_952;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_951;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1139)
         {
            return 0;
         }
         if(this.type == const_839)
         {
            return this.var_952.maxUserCount;
         }
         if(this.type == const_681)
         {
            return this.var_951.maxUsers;
         }
         return 0;
      }
   }
}
