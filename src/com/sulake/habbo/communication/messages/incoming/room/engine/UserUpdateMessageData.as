package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_171:Number = 0;
      
      private var var_170:Number = 0;
      
      private var var_2193:Number = 0;
      
      private var var_2190:Number = 0;
      
      private var var_2192:Number = 0;
      
      private var var_2189:Number = 0;
      
      private var var_373:int = 0;
      
      private var var_2188:int = 0;
      
      private var var_330:Array;
      
      private var var_2191:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_330 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_171 = param3;
         this.var_170 = param4;
         this.var_2193 = param5;
         this.var_373 = param6;
         this.var_2188 = param7;
         this.var_2190 = param8;
         this.var_2192 = param9;
         this.var_2189 = param10;
         this.var_2191 = param11;
         this.var_330 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_171;
      }
      
      public function get z() : Number
      {
         return this.var_170;
      }
      
      public function get localZ() : Number
      {
         return this.var_2193;
      }
      
      public function get targetX() : Number
      {
         return this.var_2190;
      }
      
      public function get targetY() : Number
      {
         return this.var_2192;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2189;
      }
      
      public function get dir() : int
      {
         return this.var_373;
      }
      
      public function get dirHead() : int
      {
         return this.var_2188;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2191;
      }
      
      public function get actions() : Array
      {
         return this.var_330.slice();
      }
   }
}
