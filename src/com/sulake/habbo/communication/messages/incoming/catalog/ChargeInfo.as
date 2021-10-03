package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2198:int;
      
      private var var_2197:int;
      
      private var var_1140:int;
      
      private var var_1138:int;
      
      private var _activityPointType:int;
      
      private var var_2196:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2198 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_1140 = param1.readInteger();
         this.var_1138 = param1.readInteger();
         this._activityPointType = param1.readInteger();
         this.var_2196 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2198;
      }
      
      public function get charges() : int
      {
         return this.var_2197;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1140;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1138;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2196;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
   }
}
