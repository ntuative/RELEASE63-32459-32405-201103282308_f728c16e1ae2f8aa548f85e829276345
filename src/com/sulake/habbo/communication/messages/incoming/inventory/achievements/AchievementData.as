package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1381:int;
      
      private var var_292:String;
      
      private var var_2629:int;
      
      private var var_2336:int;
      
      private var var_1715:int;
      
      private var var_2628:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1381 = param1.readInteger();
         this.var_292 = param1.readString();
         this.var_2629 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this.var_1715 = param1.readInteger();
         this.var_2628 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_292;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2629;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2336;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1715;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2628;
      }
   }
}
