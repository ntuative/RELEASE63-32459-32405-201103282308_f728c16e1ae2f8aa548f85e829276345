package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2008:int;
      
      private var var_2796:int;
      
      private var var_1517:int;
      
      private var var_2552:int;
      
      private var var_117:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2008 = param1.readInteger();
         this.var_2796 = param1.readInteger();
         this.var_1517 = param1.readInteger();
         this.var_2552 = param1.readInteger();
         this.var_117 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2008);
      }
      
      public function get callId() : int
      {
         return this.var_2008;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2796;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1517;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2552;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_117;
      }
   }
}
