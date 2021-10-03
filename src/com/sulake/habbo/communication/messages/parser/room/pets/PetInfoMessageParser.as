package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1817:int;
      
      private var _name:String;
      
      private var var_1381:int;
      
      private var var_2750:int;
      
      private var var_2152:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_618:String;
      
      private var var_2748:int;
      
      private var var_2749:int;
      
      private var var_2747:int;
      
      private var var_2251:int;
      
      private var var_2249:int;
      
      private var _ownerName:String;
      
      private var var_488:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1817;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2750;
      }
      
      public function get experience() : int
      {
         return this.var_2152;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2748;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2749;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2747;
      }
      
      public function get respect() : int
      {
         return this.var_2251;
      }
      
      public function get ownerId() : int
      {
         return this.var_2249;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_488;
      }
      
      public function flush() : Boolean
      {
         this.var_1817 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1817 = param1.readInteger();
         this._name = param1.readString();
         this.var_1381 = param1.readInteger();
         this.var_2750 = param1.readInteger();
         this.var_2152 = param1.readInteger();
         this.var_2748 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2749 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2747 = param1.readInteger();
         this.var_618 = param1.readString();
         this.var_2251 = param1.readInteger();
         this.var_2249 = param1.readInteger();
         this.var_488 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
