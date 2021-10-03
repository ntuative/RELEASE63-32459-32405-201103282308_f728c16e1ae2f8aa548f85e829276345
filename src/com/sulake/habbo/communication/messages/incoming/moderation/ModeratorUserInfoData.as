package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2266:int;
      
      private var var_2265:int;
      
      private var var_798:Boolean;
      
      private var var_2264:int;
      
      private var var_2267:int;
      
      private var var_2268:int;
      
      private var var_2269:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2266 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_798 = param1.readBoolean();
         this.var_2264 = param1.readInteger();
         this.var_2267 = param1.readInteger();
         this.var_2268 = param1.readInteger();
         this.var_2269 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2266;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2265;
      }
      
      public function get online() : Boolean
      {
         return this.var_798;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2264;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2267;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2268;
      }
      
      public function get banCount() : int
      {
         return this.var_2269;
      }
   }
}
