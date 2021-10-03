package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2322:String;
      
      private var var_2129:int;
      
      private var var_2320:int;
      
      private var var_2128:String;
      
      private var var_2321:int;
      
      private var var_1763:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2322 = param1.readString();
         this.var_2129 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         this.var_2128 = param1.readString();
         this.var_2321 = param1.readInteger();
         this.var_1763 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2322;
      }
      
      public function get unitPort() : int
      {
         return this.var_2129;
      }
      
      public function get worldId() : int
      {
         return this.var_2320;
      }
      
      public function get castLibs() : String
      {
         return this.var_2128;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2321;
      }
      
      public function get nodeId() : int
      {
         return this.var_1763;
      }
   }
}
