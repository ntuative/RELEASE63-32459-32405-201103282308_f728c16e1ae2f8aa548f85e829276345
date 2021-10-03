package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_397:int;
      
      private var _type:String;
      
      private var var_1655:String;
      
      private var var_1656:int;
      
      private var var_1657:String;
      
      private var var_709:String;
      
      private var var_1654:String;
      
      private var var_2222:String;
      
      private var var_2223:uint;
      
      private var var_2221:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_397 = param1.readInteger();
         this._type = param1.readString();
         this.var_1655 = param1.readString();
         this.var_1656 = param1.readInteger();
         this.var_1657 = param1.readString();
         this.var_709 = param1.readString();
         this.var_2222 = param1.readString();
         this.var_2221 = param1.readInteger();
         var _loc2_:String = "";
         var _loc3_:int = this.var_709.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_709.charAt(_loc3_)))
         {
            _loc2_ = this.var_709.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1654 = this.var_709.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1654 = this.var_709;
         }
         this.var_2223 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_397 = 0;
         this._type = "";
         this.var_1655 = "";
         this.var_1656 = 0;
         this.var_1657 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_397;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1655;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1656;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1657;
      }
      
      public function get localizationCode() : String
      {
         return this.var_709;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2223;
      }
      
      public function get sortOrder() : uint
      {
         return this.var_2221;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1654;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2222;
      }
   }
}
