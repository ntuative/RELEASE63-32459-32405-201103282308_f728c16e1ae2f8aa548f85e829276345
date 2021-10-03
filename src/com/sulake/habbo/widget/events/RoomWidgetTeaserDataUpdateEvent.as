package com.sulake.habbo.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_545:String = "RWTDUE_TEASER_DATA";
      
      public static const const_657:String = "RWTDUE_GIFT_DATA";
      
      public static const const_729:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_391:int;
      
      private var _data:String;
      
      private var var_397:int;
      
      private var var_178:String;
      
      private var var_2624:String;
      
      private var var_2623:Boolean;
      
      private var var_1319:int = 0;
      
      private var var_2622:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_391;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_397;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2624;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2623;
      }
      
      public function get ownRealName() : String
      {
         return this.var_2622;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1319;
      }
      
      public function set status(param1:int) : void
      {
         this.var_397 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2624 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2623 = param1;
      }
      
      public function set ownRealName(param1:String) : void
      {
         this.var_2622 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_391 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_178;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_178 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1319 = param1;
      }
   }
}
