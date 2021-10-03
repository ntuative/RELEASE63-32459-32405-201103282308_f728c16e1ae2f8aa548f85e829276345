package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1260:int;
      
      private var var_2735:String;
      
      private var var_2734:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1260 = param1.readInteger();
         this.var_2735 = param1.readString();
         this.var_2734 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1260;
      }
      
      public function get requesterName() : String
      {
         return this.var_2735;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2734;
      }
   }
}
