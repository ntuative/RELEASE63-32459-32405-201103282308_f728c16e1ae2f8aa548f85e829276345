package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1173:String = "M";
      
      public static const const_1733:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_373:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_893:String = "";
      
      private var var_618:String = "";
      
      private var var_2482:String = "";
      
      private var var_2245:int;
      
      private var var_2427:int = 0;
      
      private var var_2480:String = "";
      
      private var var_2481:int = 0;
      
      private var var_2429:int = 0;
      
      private var var_2693:String = "";
      
      private var var_189:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_189 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_189)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_171 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_189)
         {
            this.var_170 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_373;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_373 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_189)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_189)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_893;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_893 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_618;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_618 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2482;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2482 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2245;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2245 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2427;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2427 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2480;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2480 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2481;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2481 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2429;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_189)
         {
            this.var_2429 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2693;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_189)
         {
            this.var_2693 = param1;
         }
      }
   }
}
