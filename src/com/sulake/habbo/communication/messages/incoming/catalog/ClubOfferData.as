package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1954:String;
      
      private var var_1732:int;
      
      private var var_2603:Boolean;
      
      private var var_2601:Boolean;
      
      private var var_2602:int;
      
      private var var_2600:int;
      
      private var var_2597:int;
      
      private var var_2599:int;
      
      private var var_2598:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1954 = param1.readString();
         this.var_1732 = param1.readInteger();
         this.var_2603 = param1.readBoolean();
         this.var_2601 = param1.readBoolean();
         this.var_2602 = param1.readInteger();
         this.var_2600 = param1.readInteger();
         this.var_2597 = param1.readInteger();
         this.var_2599 = param1.readInteger();
         this.var_2598 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1954;
      }
      
      public function get price() : int
      {
         return this.var_1732;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2603;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2601;
      }
      
      public function get periods() : int
      {
         return this.var_2602;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2600;
      }
      
      public function get year() : int
      {
         return this.var_2597;
      }
      
      public function get month() : int
      {
         return this.var_2599;
      }
      
      public function get day() : int
      {
         return this.var_2598;
      }
   }
}
