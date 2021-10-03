package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1381:int;
      
      private var var_1641:int;
      
      private var var_2336:int;
      
      private var var_1715:int;
      
      private var var_1382:int;
      
      private var var_2508:String = "";
      
      private var var_2509:String = "";
      
      private var var_2507:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1381 = param1.readInteger();
         this.var_2508 = param1.readString();
         this.var_1641 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_1715 = param1.readInteger();
         this.var_1382 = param1.readInteger();
         this.var_2507 = param1.readInteger();
         this.var_2509 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get points() : int
      {
         return this.var_1641;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2336;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1715;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1382;
      }
      
      public function get badgeID() : String
      {
         return this.var_2508;
      }
      
      public function get achievementID() : int
      {
         return this.var_2507;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2509;
      }
   }
}
