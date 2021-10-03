package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1616:String;
      
      private var var_2116:int;
      
      private var _password:String;
      
      private var var_1440:int;
      
      private var var_2117:int;
      
      private var var_851:Array;
      
      private var var_2111:Array;
      
      private var var_2112:Boolean;
      
      private var var_2113:Boolean;
      
      private var var_2110:Boolean;
      
      private var var_2109:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2112;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2112 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2113;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2113 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2110;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2110 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2109;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2109 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1616;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1616 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2116;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2116 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1440;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1440 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2117;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2117 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_851;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_851 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2111;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2111 = param1;
      }
   }
}
