package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_125:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_135:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1057:int = 2;
      
      public static const const_1262:int = 3;
      
      public static const const_1742:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1587:String = "";
      
      private var var_2245:int;
      
      private var var_2427:int = 0;
      
      private var var_2429:int = 0;
      
      private var var_618:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_243:Array;
      
      private var var_1722:Array;
      
      private var var_1518:int = 0;
      
      private var var_2366:String = "";
      
      private var var_2367:int = 0;
      
      private var var_2368:int = 0;
      
      private var var_1894:Boolean = false;
      
      private var var_1588:String = "";
      
      private var var_2424:Boolean = false;
      
      private var var_2432:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2433:Boolean = false;
      
      private var var_2425:Boolean = false;
      
      private var var_2430:Boolean = false;
      
      private var var_2426:Boolean = false;
      
      private var var_2431:Boolean = false;
      
      private var var_2428:Boolean = false;
      
      private var var_2423:int = 0;
      
      private var var_1893:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_243 = [];
         this.var_1722 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1587 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1587;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2245 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2245;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2427 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2427;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2429 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2429;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_618 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_243 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_243;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1722;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1722 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1518 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1518;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2366 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2366;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2424 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2424;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2433 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2433;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2425 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2425;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2430 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2430;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2426 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2426;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2431 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2431;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2428 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2428;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2423 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2423;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2432 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2432;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1893 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1893;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2367 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2367;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2368;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1894 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1894;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1588 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1588;
      }
   }
}
