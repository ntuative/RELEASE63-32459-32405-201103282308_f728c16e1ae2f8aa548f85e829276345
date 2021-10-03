package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1847:int = 1;
      
      public static const const_1603:int = 2;
       
      
      private var var_885:String;
      
      private var var_2786:int;
      
      private var var_2785:int;
      
      private var var_2782:int;
      
      private var var_2787:int;
      
      private var var_2780:Boolean;
      
      private var var_2310:Boolean;
      
      private var var_2470:int;
      
      private var var_2469:int;
      
      private var var_2784:Boolean;
      
      private var var_2783:int;
      
      private var var_2781:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_885 = param1.readString();
         this.var_2786 = param1.readInteger();
         this.var_2785 = param1.readInteger();
         this.var_2782 = param1.readInteger();
         this.var_2787 = param1.readInteger();
         this.var_2780 = param1.readBoolean();
         this.var_2310 = param1.readBoolean();
         this.var_2470 = param1.readInteger();
         this.var_2469 = param1.readInteger();
         this.var_2784 = param1.readBoolean();
         this.var_2783 = param1.readInteger();
         this.var_2781 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_885;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2786;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2785;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2782;
      }
      
      public function get responseType() : int
      {
         return this.var_2787;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2780;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2310;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2470;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2469;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2784;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2783;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2781;
      }
   }
}
