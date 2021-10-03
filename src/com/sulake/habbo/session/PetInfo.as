package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1817:int;
      
      private var var_1381:int;
      
      private var var_2250:int;
      
      private var var_2152:int;
      
      private var var_2247:int;
      
      private var _energy:int;
      
      private var var_2248:int;
      
      private var _nutrition:int;
      
      private var var_2252:int;
      
      private var var_2249:int;
      
      private var _ownerName:String;
      
      private var var_2251:int;
      
      private var var_488:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1817;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get levelMax() : int
      {
         return this.var_2250;
      }
      
      public function get experience() : int
      {
         return this.var_2152;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2247;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2248;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2252;
      }
      
      public function get ownerId() : int
      {
         return this.var_2249;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2251;
      }
      
      public function get age() : int
      {
         return this.var_488;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1817 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1381 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2250 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2152 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2247 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2248 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2252 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2249 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2251 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_488 = param1;
      }
   }
}
